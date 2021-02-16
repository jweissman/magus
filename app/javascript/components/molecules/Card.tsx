import { Card } from "@shopify/polaris";
import React from "react";

export const BasicCard = ({ title, children }) =>
  <Card title={title} sectioned>
    {children}
  </Card>

export default { Basic: BasicCard }
