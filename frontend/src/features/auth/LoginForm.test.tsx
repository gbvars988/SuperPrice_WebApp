import React from 'react';
import {render, screen} from '@testing-library/react';
import LoginForm from './LoginForm';
import {LABEL} from '../../language';

test('renders LoginForm correctly', () => {
    render(<LoginForm/>);

    // check all labels and buttons are included in the login form
    const emailLabel = screen.getByText(LABEL.EMAIL);
    expect(emailLabel).toBeInTheDocument();

    const passwordLabel = screen.getByText(LABEL.PASSWORD);
    expect(passwordLabel).toBeInTheDocument();

    const submitButton = screen.getByRole('button', {name: LABEL.LOGIN});
    expect(submitButton).toBeInTheDocument();
});

// TODO: add all login behaviour tests here when that is implemented