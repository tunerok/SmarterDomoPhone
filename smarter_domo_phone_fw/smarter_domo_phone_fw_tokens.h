// This file is generated by Simplicity Studio.  Please do not edit manually.
//
//

// This file contains the tokens for attributes stored in flash


// Identifier tags for tokens
// Creator for attribute: IAS CIE address, endpoint: 1
#define CREATOR_IAS_CIE_ADDRESS_1 0xB000
#define NVM3KEY_IAS_CIE_ADDRESS_1 ( NVM3KEY_DOMAIN_ZIGBEE | 0xB000 )


// Types for the tokens
#ifdef DEFINETYPES
typedef uint8_t  tokType_ias_cie_address[8];
#endif // DEFINETYPES


// Actual token definitions
#ifdef DEFINETOKENS
DEFINE_BASIC_TOKEN(IAS_CIE_ADDRESS_1, tokType_ias_cie_address, {0,0,0,0,0,0,0,0})
#endif // DEFINETOKENS


// Macro snippet that loads all the attributes from tokens
#define GENERATED_TOKEN_LOADER(endpoint) do {\
  uint8_t ptr[8]; \
  uint8_t curNetwork = emberGetCurrentNetwork(); \
  uint8_t epNetwork; \
  epNetwork = emberAfNetworkIndexFromEndpoint(1); \
  if((endpoint) == 1 || ((endpoint) == EMBER_BROADCAST_ENDPOINT && epNetwork == curNetwork)) { \
    halCommonGetToken((tokType_ias_cie_address *)ptr, TOKEN_IAS_CIE_ADDRESS_1); \
    emberAfWriteServerAttribute(1, ZCL_IAS_ZONE_CLUSTER_ID, ZCL_IAS_CIE_ADDRESS_ATTRIBUTE_ID, (uint8_t*)ptr, ZCL_IEEE_ADDRESS_ATTRIBUTE_TYPE); \
  } \
} while(false)


// Macro snippet that saves the attribute to token
#define GENERATED_TOKEN_SAVER do {\
  uint8_t allZeroData[8]; \
  MEMSET(allZeroData, 0, 8); \
  if ( data == NULL ) data = allZeroData; \
  if ( endpoint == 1 ) { \
    if ( clusterId == 0x0500 ) { \
      if ( metadata->attributeId == 0x0010 && 0x0000 == emberAfGetMfgCode(metadata) &&!emberAfAttributeIsClient(metadata) ) \
        halCommonSetToken(TOKEN_IAS_CIE_ADDRESS_1, data); \
    } \
  } \
} while(false)


