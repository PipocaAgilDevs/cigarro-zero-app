import React from "react";
import { View, Text, StyleSheet, TouchableOpacity } from "react-native";
import Icon from "react-native-vector-icons/Ionicons";

const HeaderHome: React.FC = () => {
  return (
    <>
      <View style={styles.containerOuter}>
        <Text style={styles.title}>Cigarro Zero</Text>
        <Text>Meu Progresso</Text>
        <TouchableOpacity>
          <Icon name="ellipsis-vertical-sharp" size={16} color="#000000" />
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
    borderBottomWidth: 1,
    height: 56,
  },
  title: {
    fontSize: 14,
    textAlign: "center",
    color: "#323232",
    fontFamily: "Nunito_700Bold",
  },
});

export default HeaderHome;
