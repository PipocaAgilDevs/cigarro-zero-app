import React, { useState } from "react";
import { NavigationContainer } from "@react-navigation/native";
import { createStackNavigator } from "@react-navigation/stack";
import HomeScreen from "./screens/HomeScreen";
import { useFonts } from "expo-font";

const Stack = createStackNavigator();

const App: React.FC = () => {
  const [isLoading, setIsLoading] = useState(true);

  let [fontsLoaded] = useFonts({});

  if (!fontsLoaded) {
    setTimeout(() => {
      setIsLoading(false);
    }, 2000);
  } else {
    return (
      <NavigationContainer>
        <Stack.Navigator
          screenOptions={{ headerShown: false, animationEnabled: false }}
        >
          <Stack.Screen name="Home" component={HomeScreen} />
        </Stack.Navigator>
      </NavigationContainer>
    );
  }
};

export default App;
