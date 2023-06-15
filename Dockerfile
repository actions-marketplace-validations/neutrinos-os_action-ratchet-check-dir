FROM ghcr.io/sethvargo/ratchet:0.2.3 as ratchet

FROM alpine:3.18.2
COPY --from=ratchet /ratchet /ratchet

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
