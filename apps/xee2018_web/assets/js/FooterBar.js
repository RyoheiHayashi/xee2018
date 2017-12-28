import React, { Component } from 'react';
import {BottomNavigation, BottomNavigationItem} from 'material-ui/BottomNavigation';
import Paper from 'material-ui/Paper';
import IconLocationOn from 'material-ui/svg-icons/communication/location-on';
import {cyan500, red500, white} from 'material-ui/styles/colors';

const recentsIcon = <IconLocationOn color={red500} />;

function handleClick() {
  location.href = "http://localhost:4000";
}

const styles = {
  footerBar: {
    backgroundColor: white,
  }
};

class FooterBar extends Component {
  state = {
    selectedIndex: 0,
  };

  select = (index) => this.setState({selectedIndex: index});

  render() {

    return (
      <Paper zDepth={1}>
        <BottomNavigation selectedIndex={this.state.selectedIndex}　style={styles.footerBar}>
          <BottomNavigationItem
            label="紹介"
            icon={recentsIcon}
            onClick={() => this.select(0)}
          />
          <BottomNavigationItem
            label="実績"
            icon={recentsIcon}
            onClick={() => this.select(1)}
          />
          <BottomNavigationItem
            label="開発"
            icon={recentsIcon}
            onClick={() => this.select(2)}
          />
          <BottomNavigationItem
            label="お問合せ"
            icon={recentsIcon}
            onClick={() => this.select(3)}
          />
        </BottomNavigation>
      </Paper>
    );
  }
}

export default FooterBar;
