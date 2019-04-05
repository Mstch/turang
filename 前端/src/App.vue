<template>
    <div id="app">
        <Menu style="width:100%;margin-bottom: 2rem" mode="horizontal" theme="light" active-name="1">
            <MenuItem :to="{name:'turang'}" name="1">
                <Icon type="md-document"/>
                土壤管理
            </MenuItem>
            <MenuItem :to="{name:'threshold'}" name="2">
                <Icon type="md-heart"/>
                阈值管理
            </MenuItem>
            <MenuItem :to="{name:'warning'}" name="3">
                <Badge v-if="warningCount>0" :count="warningCount">
                    <div>
                        <Icon type="md-heart"/>
                        预警管理
                    </div>
                </Badge>
                <div v-else>
                    <Icon type="md-heart"/>
                    预警管理
                </div>
            </MenuItem>
        </Menu>
        <router-view @add="warningCount++" @deal="warningCount=warningCount-1<0?0:warningCount-1" class="routerview"/>
    </div>
</template>

<style>
    #app {
        font-family: 'Avenir', Helvetica, Arial, sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        text-align: center;
        height: 100%;
        padding: 1rem;
    }
</style>

<script>
    export default {
        data() {
            return {
                warningCount: 0
            }
        },
        created() {
            let self = this;
            this.$ajax.get('/warning/count').then((res) => {
                self.warningCount = res.data;
            })
        }
    }
</script>