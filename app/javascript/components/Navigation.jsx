import React    from 'react';
import { Link } from "react-router-dom";

import Navbar from 'react-bootstrap/Navbar';
import Nav    from 'react-bootstrap/Nav';

function Navigation() {
  return (
    <Navbar collapseOnSelect expand="sm" sticky="top">
      <Navbar.Toggle aria-controls="responsive-navbar-nav" />
      <Navbar.Collapse id="responsive-navbar-nav">
        <Nav className="ml-auto">
          <Nav.Item>
            <Nav.Link as={Link} to="/">Home</Nav.Link>
          </Nav.Item>
          <Nav.Item>
            <Nav.Link as={Link} to="/about">About</Nav.Link>
          </Nav.Item>
          <Nav.Item>
            <Nav.Link as={Link} to="/contact">Contact</Nav.Link>
          </Nav.Item>
        </Nav>
      </Navbar.Collapse>
    </Navbar>
  );
}

export default Navigation;
