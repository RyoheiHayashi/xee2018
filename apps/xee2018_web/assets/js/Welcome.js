import React, { Component } from 'react';
import TextField from 'material-ui/TextField';
import {blue500, red500, white} from 'material-ui/styles/colors';
import RaisedButton from 'material-ui/RaisedButton';

const styles = {
  welcome: {
    width: '100%',
    minHeight: 'calc(100% - 60px)',
    textAlign: 'center',
    justifyContent: 'center',
    backgroundColor: blue500,
    paddingButtom: 12,
  },
  textField: {
    width: 300,
    margin: 20,
    paddingTop: 0,
    paddingRight: 10,
    paddingLeft: 10,
    paddingButtom: 0,
    borderRadius: 4,
    background: white,
    fontSize: 18,
    fontWeight: 'bold',
    textAlign: 'center',
  },
  textFieldUnderline: {
    width: 300,
  },
  floatingLabel: {
    marginTop: -10,
    paddingLeft: 35,
  },
  floatingLabelFocus: {
    marginTop: -35,
    paddingLeft: 0,
    color: red500,
  },
  joinButtonLabel: {
    fontSize: 18,
  }
};

class Welcome extends Component {

  render() {

    return (
      <div style={styles.welcome}>
        <div id="logo"></div>
        <div>
          <TextField
            floatingLabelText="実験記号を入力してください。"
            style={styles.textField}
            underlineStyle={styles.textFieldUnderline}
            floatingLabelStyle={styles.floatingLabel}
            floatingLabelFocusStyle={styles.floatingLabelFocus}
          />
        </div>
        <div><RaisedButton label="実験に参加する" secondary={true} labelStyle={styles.joinButtonLabel}/></div>
      </div>
    );
  }
}

export default Welcome;
