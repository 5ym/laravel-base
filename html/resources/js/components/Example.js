import React, {Component} from 'react';
import ReactDOM from 'react-dom';
import Button from '@material/react-button';

class App extends Component {
    render() {
        return (
            <div>
                <Button
                    raised
                    className='button-alternate'
                    onClick={() => console.log('clicked!')}
                >
                    Click Me!
                </Button>
            </div>
        );
    }
}
if (document.getElementById('example')) {
    ReactDOM.render(<App />, document.getElementById('example'));
}
