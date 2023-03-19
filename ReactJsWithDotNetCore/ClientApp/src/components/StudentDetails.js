import React, { Component } from 'react';

export class StudentDetails extends Component {
    static displayName = StudentDetails.name;

    constructor(props) {
        super(props);
        this.state = {
            stundets: [], name: '', isactive: '', dateOfBirth: '', loading: true
        };
        this.handleKeyUp = this.handleKeyUp.bind(this);
        this.addStudent = this.addStudent.bind(this);
    }

    componentDidMount() {
        this.populateStudentData();
    }

    static renderStudentTable(students) {
        return (
            <table className='table table-striped' aria-labelledby="tabelLabel">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Active</th>
                        <th>Date Of Birth</th>
                    </tr>
                </thead>
                <tbody>
                    {students.map(student =>
                        <tr key={student.id}>
                            <td>{student.name}</td>
                            <td>{student.isActive ? 'Yes' : 'No'}</td>
                            <td>{student.dateOfBirth}</td>
                        </tr>
                    )}
                </tbody>
            </table>
        );
    }

    render() {
        let contents = this.state.loading
            ? <p><em>Loading...</em></p>
            : StudentDetails.renderStudentTable(this.state.stundets);

        return (
            <div>

                <h1 id="tabelLabel" >Studnet List</h1>
                <p>Fetching student list from server.</p>
                <label>Add Student</label> <br></br>
                <label>Name</label> <input type="text" name="name" onChange={this.handleKeyUp} value={this.state.name}></input> <br></br>
                <label>IsActive</label> <input type="text" name="isactive" onChange={this.handleKeyUp} value={this.state.isActive}></input> <br></br>
                <label>Date Of Birth</label> <input type="date" name="dateOfBirth" onChange={this.handleKeyUp} value={this.state.dateOfBirth}></input> <br></br>
                <input type='button' value='Submit' onClick={this.addStudent}></input>
                {contents}
            </div>
        );
    }

    handleKeyUp(event) {
        this.setState({
            [event.target.name]: event.target.value
        });
    }

    addStudent() {
        var jsonData = {
            "name": this.state.name,
            "isActive": this.state.isactive == "true" ? true : false,
            "dateOfBirth": this.state.dateOfBirth
        };
        fetch('student', {
            method: 'POST',
            mode: 'cors',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(jsonData)
        });
        this.setState({
            name: '',
            isActive: '',
            dateOfBirth: ''
        });
        this.populateStudentData();
    }

    async populateStudentData() {
        const response = await fetch('student');
        const data = await response.json();
        this.setState({ stundets: data, loading: false });
    }
}
