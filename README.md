# ethreum-localnet
ehtreum localnet environment

## lodestar for consensus client
```
❯ docker run chainsafe/lodestar dev --help
  dev

Quickly bootstrap a beacon node and multiple validators. Use for development and
 testing

weak subjectivity
      --checkpointSyncUrl  Server url hosting Beacon Node APIs to fetch weak sub
                           jectivity state. Fetch latest finalized by default, e
                           lse set --wssCheckpoint                      [string]
      --checkpointState    Set a checkpoint state to start syncing from [string]
      --wssCheckpoint      Start beacon node off a state at the provided weak su
                           bjectivity checkpoint, to be supplied in <blockRoot>:
                           <epoch> format. For example, 0x1234:100 will sync and
                            start off from the weakSubjectivity state at checkpo
                           int of epoch 100 with block root 0x1234.     [string]

api
      --rest            Enable/disable HTTP API        [boolean] [default: true]
      --rest.namespace  Pick namespaces to expose for HTTP API. Set to '*' to en
                        able all namespaces
  [array] [choices: "beacon", "config", "debug", "events", "lightclient", "lodes
  tar", "node", "validator", "*"] [default: ["beacon","config","events","node","
                                                                    validator"]]
      --rest.cors       Configures the Access-Control-Allow-Origin CORS header f
                        or HTTP API                        [string] [default: *]
      --rest.address    Set host for HTTP API      [string] [default: 127.0.0.1]
      --rest.port       Set port for HTTP API           [number] [default: 9596]

eth1
      --eth1               Whether to follow the eth1 chain
                                                      [boolean] [default: false]
      --eth1.providerUrls  Urls to Eth1 node with enabled rpc. If not explicity
                           provided and execution endpoint provided via executio
                           n.urls, it will use execution.urls. Otherwise will tr
                           y connecting on the specified default(s)
                                        [array] [default: http://localhost:8545]

execution
      --execution.urls           Urls to execution client engine API     [array]
      --execution.timeout        Timeout in miliseconds for execution engine API
                                  HTTP client                           [number]
      --execution.retryAttempts  Number of retry attempts when calling execution
                                  engine API               [number] [default: 1]
      --execution.retryDelay     Delay time in milliseconds between retries when
                                  retrying calls to the execution engine API
                                                           [number] [default: 0]
      --jwt-secret               File path to a shared hex-encoded jwt secret wh
                                 ich will be used to generate and bundle HS256 e
                                 ncoded jwt tokens for authentication with the E
                                 L client's rpc server hosting engine apis. Secr
                                 et to be exactly same as the one used by the co
                                 rresponding EL client.                 [string]

builder
      --builder          Enable execution payload production via a builder for b
                         etter rewards                                 [boolean]
      --builder.urls     Urls hosting the builder API                    [array]
      --builder.timeout  Timeout in miliseconds for builder API HTTP client
                                                                        [number]

metrics
      --metrics          Enable the Prometheus metrics HTTP server
                                                      [boolean] [default: false]
      --metrics.port     Listen TCP port for the Prometheus metrics HTTP server
                                                        [number] [default: 5064]
      --metrics.address  Listen address for the Prometheus metrics HTTP server
                                                   [string] [default: 127.0.0.1]

network
      --discv5               Enable discv5             [boolean] [default: true]
      --listenAddress        The address to listen for p2p UDP and TCP connectio
                             ns                      [string] [default: 0.0.0.0]
      --port                 The TCP/UDP port to listen on. The UDP port can be
                             modified by the --discovery-port flag.
                                                        [number] [default: 9000]
      --discoveryPort        The UDP port that discovery will listen on. Default
                             s to `port`              [number] [default: `port`]
      --bootnodes            Bootnodes for discv5 discovery[array] [default: []]
      --targetPeers          The target connected peers. Above this number peers
                              will be disconnected        [number] [default: 50]
      --subscribeAllSubnets  Subscribe to all subnets regardless of validator co
                             unt                      [boolean] [default: false]

enr
      --enr.ip    Override ENR IP entry                                 [string]
      --enr.tcp   Override ENR TCP entry                                [number]
      --enr.udp   Override ENR UDP entry                                [number]
      --enr.ip6   Override ENR IPv6 entry                               [string]
      --enr.tcp6  Override ENR (IPv6-specific) TCP entry                [number]
      --enr.udp6  Override ENR (IPv6-specific) UDP entry                [number]

keymanager
      --keymanager              Enable keymanager API server
                                                      [boolean] [default: false]
      --keymanager.authEnabled  Enable token bearer authentication for keymanage
                                r API server           [boolean] [default: true]
      --keymanager.port         Set port for keymanager API
                                                        [number] [default: 5062]
      --keymanager.address      Set host for keymanager API
                                                   [string] [default: 127.0.0.1]
      --keymanager.cors         Configures the Access-Control-Allow-Origin CORS
                                header for keymanager API  [string] [default: *]

externalSignerUrl
      --externalSigner.url      URL to connect to an external signing server
                                                                        [string]
      --externalSigner.pubkeys  List of validator public keys used by an externa
                                l signer. May also provide a single string a com
                                ma separated public keys                 [array]
      --externalSigner.fetch    Fetch then list of pubkeys to validate from an e
                                xternal signer                         [boolean]

dev
      --genesisEth1Hash    If present it will create genesis with this eth1 hash
                           .                                            [string]
  -c, --genesisValidators  If present it will create genesis with interop valida
                           tors and start chain.           [number] [default: 8]
      --startValidators    Start interop validators in inclusive range with nota
                           tion '0..7'                                  [string]
      --genesisTime        genesis_time to initialize interop genesis state
                                                         [number] [default: now]
  -r, --reset              To delete chain and validator directories   [boolean]

Options:
      --dataDir                             Lodestar root data directory[string]
      --network                             Name of the Ethereum Consensus chain
                                             network to join
  [string] [choices: "mainnet", "gnosis", "goerli", "ropsten", "sepolia", "dev",
   "mainnet", "gnosis", "goerli", "ropsten", "sepolia", "dev"] [default: mainnet
                                                                               ]
      --paramsFile                          Network configuration file  [string]
      --terminal-total-difficulty-override  Terminal PoW block TTD override
                                                                        [string]
      --terminal-block-hash-override        Terminal PoW block hash override
                                                                        [string]
      --terminal-block-hash-epoch-override  Terminal PoW block hash override act
                                            ivation epoch               [string]
      --rcConfig                            RC file to supplement command line a
                                            rgs, accepted formats: .yml, .yaml,
                                            .json
      --logLevel                            Logging verbosity level for emitting
                                            s logs to terminal
  [string] [choices: "error", "warn", "info", "verbose", "debug", "trace"] [defa
                                                                    ult: "info"]
      --logFile                             Path to output all logs to a persist
                                            ent log file, use 'none' to disable
                                                                        [string]
      --logFileLevel                        Logging verbosity level for emitting
                                            s logs to file
  [string] [choices: "error", "warn", "info", "verbose", "debug", "trace"] [defa
                                                                   ult: "debug"]
      --logFileDailyRotate                  Daily rotate log files, set to an in
                                            teger to limit the file count, set t
                                            o 0(zero) to disable rotation
                                                           [number] [default: 5]
      --suggestedFeeRecipient               Specify fee recipient default for co
                                            llecting the EL block fees and rewar
                                            ds (a hex string representing 20 byt
                                            es address: ^0x[a-fA-F0-9]{40}$). It
                                             would be possible (WIP) to override
                                             this per validator key using config
                                             or keymanager API. Only used post m
                                            erge.
                  [string] [default: 0x0000000000000000000000000000000000000000]
      --beaconNodes, --server               Addresses to connect to BeaconNode
                                    [array] [default: ["http://127.0.0.1:9596"]]
      --force                               Open validators even if there's a lo
                                            ckfile. Use with caution   [boolean]
      --graffiti                            Specify your custom graffiti to be i
                                            ncluded in blocks (plain UTF8 text,
                                            32 characters max)          [string]
      --proposerSettingsFile                A yaml file to specify detailed defa
                                            ult and per validator pubkey customi
                                            zed proposer configs. PS: This featu
                                            re and its format is in alpha and su
                                            bject to change             [string]
      --strictFeeRecipientCheck             Enable strict checking of the valida
                                            tor's feeRecipient with the one retu
                                            rned by engine             [boolean]
      --defaultGasLimit                     Suggested gasLimit to the engine/bui
                                            lder for building execution payloads
                                            . Only used post merge.
                                                    [number] [default: 30000000]
      --importKeystores, --keystore         Path(s) to a directory or single fil
                                            epath to validator keystores, i.e. L
                                            aunchpad validators
                                           [array] [default: ./keystores/*.json]
      --importKeystoresPassword, --passphr  Path to a file with password to decr
      aseFile                               ypt all keystores from importKeystor
                                            es option
                                              [string] [default: ./password.txt]
      --doppelgangerProtectionEnabled       Enables Doppelganger protection
                                                      [boolean] [default: false]
  -h, --help                                Show help                  [boolean]
  -v, --version                             Show version number        [boolean]

Examples:
   dev --genesisValidators 8 --reset  Start a single beacon node with 8 interop
                                      validators
```
