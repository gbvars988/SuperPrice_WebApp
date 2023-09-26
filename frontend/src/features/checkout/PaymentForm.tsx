import React, { useState } from "react";
import {
  Box,
  Button,
  FormControl,
  FormLabel,
  Grid,
  Input,
  InputGroup,
  InputLeftElement,
  Progress,
  Text,
} from "@chakra-ui/react";
import { FaCalendarAlt, FaRegCreditCard, FaUserAlt } from "react-icons/fa";
import Cards, { Focused } from "react-credit-cards-2";
import "react-credit-cards-2/dist/es/styles-compiled.css";

const PaymentForm: React.FC = () => {
  const [state, setState] = useState({
    name: "",
    number: "",
    expiry: "",
    cvc: "",
    focus: "",
  });

  const handleInputChange = (evt: any) => {
    const { name, value } = evt.target;
    setState((prev) => ({ ...prev, [name]: value }));
  };

  const handleInputFocus = (evt: any) => {
    setState((prev) => ({ ...prev, focus: evt.target.name }));
  };

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    console.log("submitting payment form");
  };

  const allFieldsFilled =
    state.name && state.number && state.expiry && state.cvc;

  return (
    <Box w={"80%"}>
      <Progress colorScheme="teal" size="xs" isAnimated value={66} mb={5} />

      <Box borderWidth={1} borderRadius="md" p={10} minWidth={"450px"}>
        <FormControl onSubmit={handleSubmit}>
          <Grid templateColumns="1fr 1fr" gap={6} mb={7}>
            <Box>
              <FormLabel>Cardholder's Name</FormLabel>
              <InputGroup>
                <InputLeftElement
                  pointerEvents="none"
                  children={<FaUserAlt color="gray.300" />}
                />
                <Input
                  type="text"
                  name="name"
                  placeholder="John Doe"
                  value={state.name}
                  onChange={handleInputChange}
                  onFocus={handleInputFocus}
                />
              </InputGroup>

              <FormLabel mt={5}>Card Number</FormLabel>
              <InputGroup>
                <InputLeftElement
                  pointerEvents="none"
                  children={<FaRegCreditCard color="gray.300" />}
                />
                <Input
                  type="text"
                  name="number"
                  placeholder="1234 5678 9123 4567"
                  value={state.number}
                  onChange={handleInputChange}
                  onFocus={handleInputFocus}
                />
              </InputGroup>

              <Grid templateColumns="repeat(2, 1fr)" gap={6} mb={3} mt={7}>
                <Box>
                  <FormLabel>Valid Thru</FormLabel>
                  <InputGroup>
                    <InputLeftElement
                      pointerEvents="none"
                      children={<FaCalendarAlt color="gray.300" />}
                    />
                    <Input
                      type="text"
                      name="expiry"
                      placeholder="08/25"
                      value={state.expiry}
                      onChange={handleInputChange}
                      onFocus={handleInputFocus}
                    />
                  </InputGroup>
                </Box>

                <Box>
                  <FormLabel>CVV/CVC</FormLabel>
                  <Input
                    type="text"
                    name="cvc"
                    placeholder="123"
                    value={state.cvc}
                    onChange={handleInputChange}
                    onFocus={handleInputFocus}
                  />
                </Box>
              </Grid>

              <Box display="flex" alignItems="center">
                <Text fontSize="xs" color="gray.500">
                  * CVV or CVC is the card security code on the back of your
                  card, separate from its number.
                </Text>
              </Box>
            </Box>

            <Box>
              <Cards
                number={state.number}
                expiry={state.expiry}
                cvc={state.cvc}
                name={state.name}
                focused={state.focus as Focused}
              />
            </Box>
          </Grid>

          <Box display="flex" justifyContent="center">
            <Button
              colorScheme="teal"
              type="submit"
              onClick={handleSubmit}
              isDisabled={!allFieldsFilled}
            >
              Confirm Payment
            </Button>
          </Box>
        </FormControl>
      </Box>
    </Box>
  );
};

export default PaymentForm;
