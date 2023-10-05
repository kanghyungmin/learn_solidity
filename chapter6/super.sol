// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;


contract Student {
    string[] internal course;

    function showCourses() public virtual returns(string[] memory) {
        delete course;
        course.push('a');
        course.push('b');
        return course;
    }
}

contract ArtStudent is Student {
    function showCourses() public override returns(string[] memory) {
        super.showCourses();
        course.push("Art");
        return course;
    }
}