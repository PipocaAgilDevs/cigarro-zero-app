import React from "react";
import { View, StyleSheet } from "react-native";
import { useNavigation } from "@react-navigation/native";

const Body: React.FC = () => {
  const navigation = useNavigation();

  return <View style={styles.bodyContainer}></View>;
};

const styles = StyleSheet.create({
  bodyContainer: {
    height: 700,
  },
});

export default Body;
