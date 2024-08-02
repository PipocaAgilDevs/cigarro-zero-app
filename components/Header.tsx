import React, { useState } from "react";
import { View, Text, StyleSheet, TouchableOpacity, Modal } from "react-native";
import Icon from "react-native-vector-icons/FontAwesome";

const HeaderHome: React.FC = () => {
  const [searchModalVisible, setSearchModalVisible] = useState(false);
  const [notificationModalVisible, setNotificationModalVisible] =
    useState(false);

  const handleBellPress = () => {
    setNotificationModalVisible(true);
  };

  const handleSearchPress = () => {
    setSearchModalVisible(true);
  };

  return (
    <>
      <View style={styles.containerOuter}>
        <Text style={styles.title}>Cigarro Zero</Text>
        <TouchableOpacity onPress={handleSearchPress}>
          <Icon name="search" size={18} color="#F7A833" />
        </TouchableOpacity>
      </View>
    </>
  );
};

const styles = StyleSheet.create({
  containerOuter: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    marginBottom: 26,
    paddingLeft: 22,
    paddingRight: 16,
  },
  title: {
    fontSize: 14,
    textAlign: "center",
    color: "#323232",
    fontFamily: "Nunito_700Bold",
  },
});

export default HeaderHome;
