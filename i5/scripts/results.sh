for f in ext4* xfs* btrfs* zfs*; do

	for s in `ls $f`; do

		if [ ! -d "$f/$s" ]; then
			continue
		fi

		for m in ro rw; do

			if [ ! -d "$f/$s/$m" ]; then
				continue
			fi

			for c in `ls $f/$s/$m`; do

				if [ ! -d "$f/$s/$m/$c" ]; then
					continue
				fi

				tps=`grep 'tps =' $f/$s/$m/$c/pgbench.log | awk '{print $3}'`

				echo $f $s $m $c $tps

			done

		done

	done

done
