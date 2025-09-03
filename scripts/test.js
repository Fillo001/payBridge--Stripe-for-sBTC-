import { ClarinetClient } from "clarinet-sdk";

async function test() {
  const client = new ClarinetClient();
  const contract = client.getContract("paybridge");

  // Lock funds
  await contract.call("lock-funds", [100]);
  console.log("✅ Funds locked");

  // Release funds
  await contract.call("release-funds", ["ST1234...", 100]);
  console.log("✅ Funds released");
}

test();
