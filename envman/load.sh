# Generated for envman. Do not edit.
for x in ~/.config/envman/*.env; do
    my_basename="$(basename "${x}")"
    if [ "*.env" = "${my_basename}" ]; then
        continue
    fi

    # shellcheck source=/dev/null
    . "${x}"
done
