<template>
    <div>
        <h3 class="text-center">Add Product</h3>
        <div v-if="errors" class="bg-danger text-white font-weight-bold text-center">
        <div v-for="(v, k) in errors" :key="k">
            <p v-for="error in v" :key="error" class="text-sm">
            {{ error }}
            </p>
        </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <form @submit.prevent="addProduct">
                    <div class="form-group">
                        <label>Product Title</label>
                        <input type="text" class="form-control" v-model="product.title" >
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <input type="text" class="form-control" v-model="product.description" >
                    </div>
                     <div class="form-group">
                        <label>Quantity</label>
                        <input type="number" min="0" max="99" class="form-control" v-model="product.quantity" >
                    </div>
                     <div class="form-group">
                        <label>Price</label>
                        <input type="number" min="0" max="99" class="form-control" v-model="product.price" >
                    </div>
                    <button type="submit" class="btn btn-primary">Add Product</button>
                </form>
            </div>
        </div>
    </div>
</template>
  
<script>
    export default {
        data() {
            return {
                product: {},
                errors: null,
            }
        },
        methods: {
            addProduct() {
  
                this.axios
                    .post('http://127.0.0.1:8000/api/product/add', this.product)
                    .then(response => (
                        this.$router.push({name: 'home'})
                        // console.log(response.data)
                    ))
                    .catch(error => this.errors = error.response.data.errors)
                    .finally(() => this.loading = false)
            }
        }
    }
</script>