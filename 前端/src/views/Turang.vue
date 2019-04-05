<template>
    <div id="turang">
        <div class="search">
            <div class="item">
                <span>搜索采样点：</span>
                <Input v-model="caiYangDian" class="" search @on-search="query" placeholder="搜索采样点"/>
            </div>
            <div class="item">
                <span>搜索有机质：</span>
                <Input v-model="youJiZhi" class="" search @on-search="query" placeholder="搜索有机质"/>
            </div>
            <div class="item">
                <span>搜索碱解氮：</span>
                <Input v-model="jianJieDan" class="" search @on-search="query" placeholder="搜索碱解氮"/>
            </div>
            <div class="item">
                <span>搜索全氮：</span>
                <Input v-model="quanDan" class="" search @on-search="query" placeholder="搜索全氮"/>
            </div>
            <div class="item">
                <span>搜索PH值：</span>
                <Input v-model="ph" class="" search @on-search="query" placeholder="搜索PH值"/>
            </div>
            <div class="item">
                <span>搜索有效磷：</span>
                <Input v-model="youXiaoLin" class="" search @on-search="query" placeholder="搜索有效磷"/>
            </div>
            <div class="item">
                <span>搜索速效钾：</span>
                <Input v-model="suXiaoJia" class="" search @on-search="query" placeholder="搜索速效钾："/>
            </div>
            <div class="item">
                <span>搜索缓效钾：</span>
                <Input v-model="huanXiaoJia" class="" search @on-search="query" placeholder="搜索缓效钾"/>
            </div>
            <div class="item">
                <span>搜索有效铁：</span>
                <Input v-model="youXiaoTie" class="" search @on-search="query" placeholder="搜索有效铁"/>
            </div>
            <div class="item">
                <span>搜索有效锰：</span>
                <Input v-model="youXiaoMeng" class="" search @on-search="query" placeholder="搜索有效锰"/>
            </div>
            <div class="item">
                <span>搜索有效铜：</span>
                <Input v-model="youXiaoTong" class="" search @on-search="query" placeholder="搜索有效铜"/>
            </div>
            <div class="item">
                <span>搜索有效锌：</span>
                <Input v-model="youXiaoXin" class="" search @on-search="query" placeholder="搜索有效锌"/>
            </div>
            <div class="item">
                <span>搜索有效硫：</span>
                <Input v-model="youXiaoLiu" class="" search @on-search="query" placeholder="搜索有效硫"/>
            </div>
            <div class="item">
                <span>搜索采样地点：</span>
                <Input v-model="position" class="" search @on-search="query" placeholder="搜索采样地点"/>
            </div>
            <div class="item">
                <span>搜索姓名：</span>
                <Input v-model="name" class="" search @on-search="query" placeholder="搜索姓名"/>
            </div>
            <div class="item">
                <span>搜索纬度：</span>
                <Input v-model="longitude" class="" search @on-search="query" placeholder="搜索纬度"/>
            </div>
            <div class="item">
                <span>搜索经度：</span>
                <Input v-model="latitude" class="" search @on-search="query" placeholder="搜索经度"/>
            </div>

            <!--<div class="item">-->
            <!--<Button style="height:2rem;padding:0px .5rem 0px .5rem" type="info" @click="query">搜索</Button>-->
            <!--</div>-->
            <div class="item">
                <Button style="height:2rem;padding:0px .5rem 0px .5rem" type="info" @click="clear()">清空条件</Button>
            </div>
            <div class="item">
                <Button style="height:2rem;padding:0px .5rem 0px .5rem" type="info" @click="add">添加</Button>
            </div>
        </div>
        <Table :loading="loading" style="margin:0 auto" :columns="cols" :data='list'>
            <template slot-scope="{ row, index }" slot="action">
                <Button type="primary" size="small" style="margin-right: 5px" @click="edit(index)">更改</Button>
                <Button type="error" size="small" @click="remove(row.id)">删除</Button>
            </template>
        </Table>
        <Page :current="current" :total="total" simple @on-change="changePage"/>


        <Drawer
                title="添加/更新"
                v-model="showAdd"
                width="1020"
                :mask-closable="false"
        >
            <Form class="form" ref="formData" :model="formData" :role="role">
                <div class="item" v-if="col.title!='操作'" v-for="(col,key) in cols">
                    <FormItem :required="col.title=='编号'" :label="col.title" :prop="col.key" label-position="top">
                        <Input v-model="formData[col.key]" :placeholder="'请输入'+col.title"/>
                    </FormItem>
                </div>
            </Form>
            <div class="demo-drawer-footer">
                <Button style="margin-right: 8px" @click="showAdd = false">取消</Button>
                <Button type="primary" @click="submit">提交</Button>
            </div>
        </Drawer>


    </div>
</template>
<style lang="scss">
    .form {
        display: flex;
        flex-wrap: wrap;

        .item {
            padding: 1rem;
            width: 28%;
        }
    }

    .search {
        display: flex;
        flex-wrap: wrap;

        .item {
            width: 20%;
            display: flex;
            padding: .5rem;

            span {
                min-width: 8rem;
                line-height: 2rem;
            }

            button {
                width: 5rem;
                margin: 0 auto;
            }
        }
    }
</style>

<script>
    export default {
        data() {
            return {
                role: {
                    id: {
                        required: true, message:
                            '请输入编号', trigger:
                            'blur'
                    }
                },
                loading: true,
                showAdd:
                    false,
                id:
                    '',
                caiYangDian:
                    '',
                youJiZhi:
                    '',
                quanDan:
                    '',
                jianJieDan:
                    '',

                ph:
                    '',

                youXiaoLin:
                    '',

                suXiaoJia:
                    '',

                huanXiaoJia:
                    '',

                youXiaoTie:
                    '',

                youXiaoTong:
                    '',

                youXiaoXin:
                    '',

                youXiaoLiu:
                    '',
                youXiaoMeng:
                    '',

                position:
                    '',

                name:
                    '',

                longitude:
                    '',

                latitude:
                    '',
                formData:
                    {
                        id: '',
                        caiYangDian:
                            '',
                        youJiZhi:
                            '',
                        quanDan:
                            '',
                        jianJieDan:
                            '',

                        ph:
                            '',

                        youXiaoLin:
                            '',

                        suXiaoJia:
                            '',

                        huanXiaoJia:
                            '',

                        youXiaoTie:
                            '',

                        youXiaoTong:
                            '',

                        youXiaoXin:
                            '',

                        youXiaoLiu:
                            '',
                        youXiaoMeng:
                            '',

                        position:
                            '',

                        name:
                            '',

                        longitude:
                            '',

                        latitude:
                            ''
                    }
                ,
                current: 1,
                total:
                    0,
                list:
                    [],
                cols:
                    [{
                        title: '编号',
                        key: 'id'
                    },
                        {
                            title: '采样点',
                            key: 'caiYangDian'
                        }, {
                        title: '有机质',
                        key: 'youJiZhi'
                    }, {
                        title: '全氮',
                        key: 'quanDan'
                    },
                        {

                            title: 'PH值',
                            key: 'ph'
                        },
                        {
                            title: '有效磷',
                            key: 'youXiaoLin'
                        },
                        {
                            title: '速效钾',
                            key: 'suXiaoJia'
                        },
                        {
                            title: '缓效钾',
                            key: 'huanXiaoJia'
                        },
                        {
                            title: '有效铁',
                            key: 'youXiaoTie'
                        },
                        {
                            title: '有效锰',
                            key: 'youXiaoMeng'
                        },
                        {
                            title: '有效铜',
                            key: 'youXiaoTong'
                        },
                        {
                            title: '有效锌',
                            key: 'youXiaoXin'
                        },
                        {
                            title: '有效硫',
                            key: 'youXiaoLiu'
                        },
                        {
                            title: '采样地点',
                            key: 'position'
                        },
                        {
                            title: '姓名',
                            key: 'name'
                        },
                        {
                            title: '纬度',
                            key: 'longitude'
                        },
                        {
                            title: '经度',
                            key: 'latitude'
                        },
                        {
                            title: '操作',
                            slot: 'action',
                            width: 150,
                            align: 'center'
                        }
                    ]
            }
        },
        created() {
            let self = this;
            this.$ajax.get('/turang?page=0').then((res) => {
                self.list = res.data.content;
                self.current = res.data.number + 1;
                self.total = res.data.totalElements;
                self.loading = false;
            })
        },
        methods: {
            filter(data, parse) {
                if (data.id !== '') {
                    parse.id = data.id;
                }
                if (data.caiYangDian !== '') {
                    parse.caiYangDian = data.caiYangDian;
                }
                if (data.youJiZhi !== '') {
                    parse.youJiZhi = data.youJiZhi;
                }
                if (data.quanDan !== '') {
                    parse.quanDan = data.quanDan;
                }
                if (data.ph !== '') {
                    parse.ph = data.ph;
                }
                if (data.youXiaoLin !== '') {
                    parse.youXiaoLin = data.youXiaoLin;
                }
                if (data.suXiaoJia !== '') {
                    parse.suXiaoJia = data.suXiaoJia;
                }
                if (data.huanXiaoJia !== '') {
                    parse.huanXiaoJia = data.huanXiaoJia;
                }
                if (data.youXiaoTie !== '') {
                    parse.youXiaoTie = data.youXiaoTie;
                }
                if (data.youXiaoTong !== '') {
                    parse.youXiaoTong = data.youXiaoTong;
                }
                if (data.youXiaoXin !== '') {
                    parse.youXiaoXin = data.youXiaoXin;
                }
                if (data.youXiaoLiu !== '') {
                    parse.youXiaoLiu = data.youXiaoLiu;
                }
                if (data.youXiaoMeng !== '') {
                    parse.youXiaoMeng = data.youXiaoMeng;
                }
                if (data.position !== '') {
                    parse.position = data.position;
                }
                if (data.name !== '') {
                    parse.name = data.name;
                }
                if (data.longitude !== '') {
                    parse.longitude = data.longitude;
                }
                if (data.latitude !== '') {
                    parse.latitude = data.latitude;
                }
            },
            query() {
                let self = this;
                self.loading = true;
                let param = {
                    page: self.current - 1
                };
                self.filter(self, param);
                console.log('查询')
                this.$ajax.get('/turang', {
                    params: param
                }).then((res) => {
                    self.list = res.data.content;
                    self.current = res.data.number + 1;
                    self.total = res.data.totalElements;
                    self.loading = false;
                })
            },
            changePage(e) {
                this.current = e;
                this.query();
            },
            clear(self) {
                if (!self) self = this;
                self.caiYangDian = '';
                self.youJiZhi = '';
                self.quanDan = '';
                self.ph = '';
                self.youXiaoLin = '';
                self.suXiaoJia = '';
                self.huanXiaoJia = '';
                self.youXiaoTie = '';
                self.youXiaoTong = '';
                self.youXiaoXin = '';
                self.youXiaoLiu = '';
                self.youXiaoMeng = '';
                self.position = '';
                self.name = '';
                self.longitude = '';
                self.latitude = '';
            },
            add() {
                this.showAdd = true;
            },
            edit(e) {
                this.filter(this.list[e], this.formData);
                this.showAdd = true;
            },
            remove(e) {
                this.$ajax.delete('/turang/' + e).then((res) => {
                    this.$Message.info('成功删除');
                    this.query();
                })
            },
            submit() {
                this.$refs['formData'].validate((valid) => {
                    console.log(valid)
                    if (valid) {
                        let turang = {};
                        let qs = require('qs');
                        let self = this;
                        this.filter(this.formData, turang);
                        console.log(turang, qs.stringify(turang));
                        this.$ajax.post('/turang', qs.stringify(turang)).then((res) => {
                            this.$Message.info('成功保存');
                            if(res.data){
                                this.$Modal.info({
                                    title:'预警',
                                    content:'引发了一个预警，请查看'
                                });
                                this.$emit('add');
                            }
                            this.showAdd = false;
                            this.query();
                        })
                    } else {
                        this.$Message.error('请输入编号!');
                    }
                });
            }
        }

    }
</script>