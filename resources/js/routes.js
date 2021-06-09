import AllProducts from './components/AllProduct.vue';
import AddProduct from './components/AddProduct.vue';
import EditProduct from './components/EditProduct.vue';
  
export const routes = [
    {
        name: 'home',
        path: '/',
        component: AllProducts
    },
    {
        name: 'add',
        path: '/add',
        component: AddProduct
    },
    {
        name: 'edit',
        path: '/edit/:id',
        component: EditProduct
    }
];