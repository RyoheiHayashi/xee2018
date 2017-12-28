import React, { Component } from 'react';
import NaviBar from './NaviBar';
import Welcome from './Welcome';
import FooterBar from './FooterBar';

const styles = {
  Top: {
    width: '100%',
    height: '100vh',
  },
};

class Top extends Component {

  render() {

    return (
      <div style={styles.Top}>
        <NaviBar />
        <Welcome />
        <FooterBar />
      </div>
    );
  }
}

export default Top;
