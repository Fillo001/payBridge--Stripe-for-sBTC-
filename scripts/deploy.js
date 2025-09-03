import { ClarinetClient } from "clarinet-sdk";

async function deploy() {
  const client = new ClarinetClient();
  await client.deployContract("contracts/paybridge.clar");
  console.log("✅ PayBridge contract deployed successfully");
}

deploy();
