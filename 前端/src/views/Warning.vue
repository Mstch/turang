<template>
    <div id="warning">
        <Card>
            <p style="height: 2rem" slot="title">{{deal?'解决':'未解决'}}的预警
                <Button @click="deal = !deal;current = 1;query();">查看{{deal?'未解决':'解决'}}的</Button>
            </p>
            <Table :loading="loading" :columns="cols" :data='warning'>
                <template slot-scope="{ row, index }" slot="project">
                    <div style="text-align: left;margin: .5rem" v-for="(pitem,pindex) in row.project.split('#')"
                         v-if="pitem!=''&&pindex<3">{{pitem}}
                    </div>
                    <div style="text-align: left">
                        <span v-if=" row.project.split('#').length>3">...</span><a
                            v-if=" row.project.split('#').length>3" @click="more(row.project.split('#'))"
                            href="javascript:;">查看更多</a></div>
                </template>
                <template slot-scope="{ row, index }" slot="action">
                    <Button type="primary" size="small" style="margin-right: 5px" @click="dealProject(index)">解决
                    </Button>
                </template>
            </Table>
            <Page :current="current" :total="total" simple @on-change="changePage"/>
        </Card>
    </div>
</template>
<style lang="scss">
    #warning {
        .ivu-table-row {
            height: 5rem;
        }
    }
</style>
<script>
    import Table from "iview/src/components/table/table";
    import Button from "iview/src/components/button/button";

    export default {
        components: {Button, Table},
        data() {
            return {
                current: 1,
                total: 0,
                deal: false,
                loading: true,
                warning: [],
                warningDeal: [],
                cols: [{
                    title: '预警项目',
                    slot: 'project',
                    align: 'center'
                },
                    {title: '时间', key: 'time'},
                    {title: '等级', key: 'degree'},
                    {title: '地址', key: 'position'}, {
                        title: '操作',
                        slot: 'action',
                        width: 150,
                        align: 'center'
                    }
                ]
            }
        },
        watch: {
            deal(newValue, oldValue) {
                if (!newValue) {
                    this.cols = [{
                        title: '预警项目',
                        slot: 'project',
                        align: 'center'
                    },
                        {title: '时间', key: 'time'},
                        {title: '等级', key: 'degree'},
                        {title: '地址', key: 'position'}, {
                            title: '操作',
                            slot: 'action',
                            width: 150,
                            align: 'center'
                        }
                    ];
                } else {
                    this.cols = [{
                        title: '预警项目',
                        slot: 'project',
                        align: 'center'
                    },
                        {title: '时间', key: 'time'},
                        {title: '等级', key: 'degree'},
                        {title: '地址', key: 'position'}
                    ]
                }
            }
        },
        created() {
            let self = this;
            this.$ajax.get('/warning?deal=false', {
                params: {
                    page: self.current - 1
                }
            }).then((res) => {
                self.warning = res.data.content;
                self.loading = false;
                self.current = res.data.number + 1;
                self.total = res.data.totalElements;
            })
        },
        methods: {
            dealProject(index) {
                let qs = require('qs');
                let data = this.warning[index];
                data.deal = true;
                this.$ajax.post('/warning', qs.stringify(data)).then((res) => {
                    this.$Message.info('成功解决');
                    this.query();
                })
                this.$emit('deal');

            },
            query() {
                let self = this;
                this.$ajax.get('/warning', {
                    params: {
                        deal: self.deal,
                        page: self.current - 1
                    }
                }).then((res) => {
                    self.warning = res.data.content;
                    self.loading = false;
                    self.total = res.data.totalElements;
                })
            },
            more(arr) {
                let content = '';
                for (let i = 1; i < arr.length; i++) {
                    content += '<br><br>' + arr[i];
                }
                this.$Modal.info({
                    title: '预警项目',
                    content: content
                })
            },
            changePage(e) {
                this.current = e;
                this.query(false);
            },

        }

    }
</script>
