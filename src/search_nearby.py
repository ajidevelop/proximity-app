from typing import Dict
from typing import Any
import json


def main(event: Dict[str, Any], context: Dict[str, Any]):
    return {"statusCode": 200, "body": json.dumps({"response": 200})}
