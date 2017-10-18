#if (${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end

#parse("File Header.java")
public class ${NAME} extends RecyclerView.Adapter<${NAME}.ViewHolder> {

     public interface OnItemClickListener {
        void onItemClick( int position);
    }

    private Context context;
    private List<${LIST_MODEL}> list;
    private OnItemClickListener onItemClickListener;
   
    public ${NAME}(Context context, List<${LIST_MODEL}> list,
     OnItemClickListener onItemClickListener) {
        this.context = context;
        this.list = list;
        this.onItemClickListener = onItemClickListener;
    }
   
    @Override
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        final ViewDataBinding binding = DataBindingUtil
                            .inflate(LayoutInflater.from(parent.getContext()), 
                            R.layout.${item_layout}, parent, false);
        return new ViewHolder(binding);
    }


    @Override
    public void onBindViewHolder(ViewHolder holder, int position) {
        ${LIST_MODEL} item = list.get(position);
        holder.bind(item, onItemClickListener);
    }


    @Override
    public int getItemCount() {
        return list.size();
    }

     public static class ViewHolder extends RecyclerView.ViewHolder {
        ViewDataBinding binding;
      
        public ViewHolder(ViewDataBinding binding) {
            super(binding.getRoot());
            this.binding = binding;
        }

        public void bind(final ${LIST_MODEL} model,
                         final OnItemClickListener listener) {
            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    listener.onItemClick(getLayoutPosition());

                }
            });
        }
    }


}