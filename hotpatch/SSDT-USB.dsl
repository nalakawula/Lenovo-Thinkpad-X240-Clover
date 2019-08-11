// Lenovo ThinkPad X240 USB Ports Injector
// Disabled FingerPrint Reader as they are not supported on macOS

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "X240", "_USB", 0)
{
    #endif
    Device(UIAC)
    {
        Name(_HID, "UIA00000")
        
        Name(RMCF, Package()
        {
            "HUB1", Package()
            {
                "port-count", Buffer() { 8, 0, 0, 0 },
                "ports", Package()
                {
                    "HP15", Package() // EMV Smart Card Reader
                    {
                        //"UsbConnector", 0,
                        "portType", 2,
                        "port", Buffer() { 5, 0, 0, 0 },
                    },
                },
            },
            "EH01", Package()
            {
                "port-count", Buffer() { 8, 0, 0, 0 },
                "ports", Package()
                {
                    "PR11", Package()
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                },
            },
            "8086_9c31", Package()
            {
                "port-count", Buffer() { 13, 0, 0, 0 },
                "ports", Package()
                {
                    "HS01", Package() // USB3 Port (Right)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HS02", Package() // USB3 Port (Left)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    "HS04", Package() // (WWAN) Sierra Wireless 4G LTE
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 4, 0, 0, 0 },
                    },
                    //"HS06", Package() // FingerPrint Reader
                    //{
                    //"UsbConnector", 255,
                    //"port", Buffer() { 6, 0, 0, 0 },
                    //},
                    "HS07", Package() // Bluetooth (Intel)
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 7, 0, 0, 0 },
                    },
                    "HS08", Package() // Integrated Camera
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 8, 0, 0, 0 },
                    },
                    "SS01", Package() // USB3 Port (Right)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 10, 0, 0, 0 },
                    },
                    "SS02", Package() // USB3 Port (Left)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 11, 0, 0, 0 },
                    },
                },
            },
        })
    }
    #ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF