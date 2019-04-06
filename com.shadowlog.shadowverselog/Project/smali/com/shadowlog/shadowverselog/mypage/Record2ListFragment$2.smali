.class Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$2;
.super Ljava/lang/Object;
.source "Record2ListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->updateListData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

.field final synthetic val$listview:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;Landroid/widget/ListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    iput-object p2, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$2;->val$listview:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 107
    new-instance v2, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;

    iget-object v7, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    invoke-virtual {v7}, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;-><init>(Landroid/content/Context;)V

    .line 108
    .local v2, "rdb":Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->open()V

    .line 109
    const-string v7, "select * from SV_RECORD_2PICK where delete_flag=0 order by update_date desc"

    invoke-virtual {v2, v7}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 110
    .local v5, "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->close()V

    .line 112
    iget-object v7, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    invoke-static {v7}, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 114
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 115
    .local v1, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;

    invoke-direct {v4}, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;-><init>()V

    .line 116
    .local v4, "rs":Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;
    invoke-virtual {v4, v1}, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->setHash(Ljava/util/Map;)V

    .line 118
    const-string v7, "result"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 119
    .local v6, "winRes":I
    const-string v3, ""

    .line 120
    .local v3, "resStars":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v7, 0x5

    if-ge v0, v7, :cond_1

    .line 121
    if-le v6, v0, :cond_0

    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    const v10, 0x7f0c0025

    invoke-virtual {v9, v10}, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    const v10, 0x7f0c0026

    invoke-virtual {v9, v10}, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 128
    :cond_1
    iput-object v3, v4, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->resString:Ljava/lang/String;

    .line 131
    iget-object v7, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    invoke-static {v7}, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    .end local v0    # "i":I
    .end local v1    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resStars":Ljava/lang/String;
    .end local v4    # "rs":Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;
    .end local v6    # "winRes":I
    :cond_2
    iget-object v7, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    invoke-virtual {v7}, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    new-instance v8, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$2$1;

    invoke-direct {v8, p0}, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$2$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$2;)V

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method
