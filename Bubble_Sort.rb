# Bubble Sort 

def bubble_sort(arr_ori)

    arr = arr_ori.map(&:itself) # Clones the original array into a new one
    idxf = arr.length-1
    
    idxf.times  do 

        idx = 0
        while idx < idxf do

            if arr[idx] > arr[idx+1]
                float = arr[idx]
                arr[idx] = arr[idx+1]
                arr[idx+1] = float
            end

            idx += 1
        end
        idxf -= 1
    end
    return arr
end

p bubble_sort([4,3,78,2,0,2])
