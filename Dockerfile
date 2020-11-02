
FROM mediacloudai/rs_command_line_worker:0.2.1-debian as command_line
FROM mediacloudai/docker_alpine_ffmpeg:buster-latest as ffmpeg

COPY --from=command_line /usr/bin/command_line_worker /usr/bin/command_line_worker

CMD command_line_worker
