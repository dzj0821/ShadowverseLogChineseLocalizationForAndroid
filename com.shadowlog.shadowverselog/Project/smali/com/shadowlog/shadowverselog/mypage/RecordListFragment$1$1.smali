.class Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1$1;
.super Ljava/lang/Object;
.source "RecordListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;

.field final synthetic val$tmp:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;

    iput-object p2, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1$1;->val$tmp:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 107
    :try_start_0
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;

    iget-object v3, v3, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 109
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1$1;->val$tmp:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 110
    .local v1, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/shadowlog/shadowverselog/struct/RecordStruct;

    invoke-direct {v2}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;-><init>()V

    .line 111
    .local v2, "rs":Lcom/shadowlog/shadowverselog/struct/RecordStruct;
    invoke-virtual {v2, v1}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->setHash(Ljava/util/Map;)V

    .line 113
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;

    iget-object v4, v4, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    invoke-static {v4}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    .end local v1    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "rs":Lcom/shadowlog/shadowverselog/struct/RecordStruct;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RecordListFragment Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 116
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1$1;->val$tmp:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 119
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;

    iget-object v3, v3, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->access$102(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;)Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;

    .line 120
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;

    iget-object v3, v3, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 121
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;

    iget-object v3, v3, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    new-instance v4, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;

    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;

    iget-object v5, v5, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    invoke-static {v5}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;)Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f09005b

    iget-object v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;

    iget-object v7, v7, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    invoke-static {v7}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;

    iget-object v8, v8, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    invoke-static {v8}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;)Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;)V

    invoke-static {v3, v4}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->access$102(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;)Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;

    .line 123
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;

    iget-object v3, v3, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;->val$listview:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;

    iget-object v3, v3, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;->val$listview:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;

    iget-object v4, v4, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    invoke-static {v4}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->access$100(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;)Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;

    iget-object v3, v3, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;->val$listview:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 126
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;

    iget-object v3, v3, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->access$300(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0700b7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :goto_2
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;

    iget-object v3, v3, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;->val$listview:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_1

    .line 128
    :cond_1
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;

    iget-object v3, v3, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;->val$listview:Landroid/widget/ListView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 129
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;

    iget-object v3, v3, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->access$300(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0700b7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
