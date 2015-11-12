#!/bin/bash
CURRENT_DATE=`date +%Y.%m.%d`
CURRENT_INDEX='.marvel-'${CURRENT_DATE}
cd # <PATH TO MARVEL INDICES>
if ls -a | grep -q $CURRENT_INDEX; then
        echo 'Found index' $CURRENT_INDEX
        INDEXES=`ls -a | grep '.marvel-[0-9]\{4\}.[0-9]\{2\}.[0-9]\{2\}'`
        for index in $INDEXES
        do
                if [ "$index" != "$CURRENT_INDEX" ]; then
                        rm -rf $index
                        echo 'Removing index' $index
                fi
        done
        echo 'Cleanup successful'
else
        echo $CURRENT_INDEX 'not found. Skipping cleanup'
fi