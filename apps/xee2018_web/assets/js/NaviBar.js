import React, { Component } from 'react';
import AppBar from 'material-ui/AppBar';
import FlatButton from 'material-ui/FlatButton';

function handleClick() {
  location.href = "http://localhost:4000";
}

const styles = {
  title: {
    cursor: 'pointer',
  }
};

class NaviBar extends Component {

  render() {

    return (
      <div>
        <AppBar
          title={<span style={styles.title}>XEE.JP</span>}
          showMenuIconButton={false}
          onTitleClick={handleClick}
          iconElementRight={<FlatButton label="サインイン" />}
       />
     </div>
    );
  }
}

export default NaviBar;
