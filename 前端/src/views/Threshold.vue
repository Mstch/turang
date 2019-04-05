<template>
    <div id="threshold">
        <Card>
            <Button :type="edit?'success':'info'" @click="fun">{{edit?'完成':'修改'}}</Button>
            <Card class="item" v-for="(v,k) in thresholdItemChinese">
            <span class="key">
                 {{v}}:
            </span>
                <span class="value">已到报警阈值：<span v-if="!edit">{{threshold[k]}}</span>
                <Input style="width: auto" type="number"
                       v-model="threshold[k]"
                       v-if="edit"/>
            </span>
                <span class="value">快到报警的阈值:<span v-if="!edit">{{threshold['nearly'+k]}}</span>
                <Input style="width: auto" type="number"
                       v-model="threshold['nearly'+k]"
                       v-if="edit"/>
            </span>
            </Card>
        </Card>
    </div>
</template>
<style lang="scss">

    #threshold {
        .ivu-card {
            width: 80%;
            margin: 0 auto 2rem;

            .ivu-btn {
                margin-bottom: 1rem;
            }

            .item {
                width: 90%;
                height: 4rem;
                margin: 0 auto 1rem;

                .ivu-card-body {
                    display: flex;
                    justify-content: space-between;
                    font-size: 1.1rem;

                    .value, .key {
                        width: 33%;
                        text-align: left;

                        .ivu-input {
                            width: 5rem;
                        }
                    }
                }
            }
        }
    }
</style>
<script>
    import Input from "iview/src/components/input/input";

    export default {
        components: {Input},
        data() {
            return {
                edit: false,
                threshold: {},
                thresholdItemChinese: {
                    youJiZhi: '有机质',
                    quanDan: '全氮',
                    jianJieDan: '碱解氮',
                    ph: 'ph',
                    youXiaoLin: '有效磷',
                    suXiaoJia: '速效钾',
                    huanXiaoJia: '缓效钾',
                    youXiaoTie: '有效铁',
                    youXiaoTong: '有效铜',
                    youXiaoXin: '有效锌',
                    youXiaoMeng: '有效锰',
                    youXiaoLiu: '有效硫'
                }
            }
        },
        created() {
            let self = this;
            this.$ajax.get('/threshold').then((res) => {
                self.threshold = res.data;
                console.log(res.data);
            })
        },
        methods: {
            fun() {
                let self = this;
                let qs = require('qs');
                if (this.edit)
                    this.$ajax.post('/threshold', qs.stringify(self.threshold)).then(() => {
                        this.edit = false;
                        this.$Message.info('成功保存');
                    })
                else this.edit = true;
            }
        }
    }
</script>
