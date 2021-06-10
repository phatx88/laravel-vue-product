<template>
    <div>
        <h3 class="text-center">All Products</h3><br/>
        <button class="btn btn-success float-right m-2" @click="fetchRandom()">Randomize</button>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>ID</th>
                <th>Product Title</th>
                <th>Description</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Image</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <tr v-for="product in products" :key="product.id">
                <td>{{ product.id }}</td>
                <td>{{ product.title }}</td>
                <td>{{ product.description }}</td>
                <td>{{ product.quantity }}</td>
                <td>{{ product.price }}</td>
                <td><img :src="getImage()" alt="" class="card-img-top"></td>
                <td>
                    <div class="btn-group" role="group">
                        <router-link :to="{name: 'edit', params: { id: product.id }}" class="btn btn-primary">Edit
                        </router-link>
                        <button class="btn btn-danger" @click="deleteProduct(product.id)">Delete</button>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
        <pagination v-bind:pagination="pagination" v-on:click.native="getProducts(pagination.current_page)" :offset="4"></pagination>
    </div>
</template>
  
<script>
    import Pagination from './Pagination'
    export default {
        components: { Pagination },
        data() {
            return {
                products: [],
                counter: 0,
                pagination: {
                    total: 0,
                    per_page: 2,
                    from: 1,
                    to: 0,
                    current_page: 1
                },
                offset: 4
            }
        },
         mounted() {
            this.getProducts(this.pagination.current_page);
        },
        // created() {
        //     this.axios
        //         .get('http://127.0.0.1:8000/api/products')
        //         .then(response => {
        //             this.products = response.data;
        //         });
        // },
        methods: {
            deleteProduct(id) {
                if (confirm("Do you really want to delete?")) {
                    this.axios
                    .delete(`http://127.0.0.1:8000/api/product/delete/${id}`)
                    .then(response => {
                        let i = this.products.map(item => item.id).indexOf(id); // find index of your object
                        this.products.splice(i, 1)
                    }).catch(err => {
                    console.log(err);
                    });
                }
            },
            getImage(){
                return  'img/product-image-placeholder.jpg';
            },
            fetchRandom() {
            this.axios
                .get('http://127.0.0.1:8000/api/products?random='+true)
                .then(response => {
                    this.products = response.data.data;
                });
            },
            getProducts (page) {
                axios.get('http://127.0.0.1:8000/api/products?page='+page)
                    .then((response) => {
                        this.products = response.data.data
                        this.pagination = response.data
                    })
            },
        }
    }
</script>
<style scoped>
.card-img-top{
    width: 40px;
    height: 40px;
    display: block;
    margin: auto;
}
</style>