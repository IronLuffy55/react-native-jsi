/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, { Component } from "react";
import { NativeModules, Platform, StyleSheet, Text, View } from "react-native";

const instructions = Platform.select({
  ios: "Press Cmd+R to reload,\n" + "Cmd+D or shake for dev menu",
  android:
    "Double tap R on your keyboard to reload,\n" +
    "Shake or press menu button for dev menu"
});
console.log("NativeModules>", Object.keys(NativeModules));
const { HelloModule } = NativeModules;
console.log("HelloModule>", HelloModule);
console.log("HelloModule.initialize()>", HelloModule.initialize());
type Props = {};

export default class App extends Component<Props> {
  render() {
    // setInterval(() => {
    // console.warn(global.nativeTest.runTest());
    // }, 1000);
    // console.log("global>", global);
    console.log("global.HelloModule>", global.HelloModule);
    console.log("global.HelloModuyle.sayHello>", global.HelloModule.sayHello());
    return (
      <View style={styles.container}>
        <Text style={styles.welcome}>Welcome to React Native!</Text>
        <Text style={styles.instructions}>To get started, edit App.js</Text>
        <Text style={styles.instructions}>{instructions}</Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: "#F5FCFF"
  },
  welcome: {
    fontSize: 20,
    textAlign: "center",
    margin: 10
  },
  instructions: {
    textAlign: "center",
    color: "#333333",
    marginBottom: 5
  }
});
