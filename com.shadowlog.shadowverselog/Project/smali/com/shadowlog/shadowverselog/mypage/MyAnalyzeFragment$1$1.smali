.class Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;
.super Ljava/lang/Object;
.source "MyAnalyzeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;

.field final synthetic val$data0:Ljava/util/HashMap;

.field final synthetic val$pieList1:Ljava/util/List;

.field final synthetic val$pieList2:Ljava/util/List;

.field final synthetic val$table1:Landroid/widget/TableLayout;

.field final synthetic val$table2:Landroid/widget/TableLayout;

.field final synthetic val$table3:Landroid/widget/TableLayout;

.field final synthetic val$table4:Landroid/widget/TableLayout;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;Ljava/util/HashMap;Ljava/util/List;Landroid/widget/TableLayout;Landroid/widget/TableLayout;Ljava/util/List;Landroid/widget/TableLayout;Landroid/widget/TableLayout;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;

    iput-object p2, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->val$data0:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->val$pieList1:Ljava/util/List;

    iput-object p4, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->val$table1:Landroid/widget/TableLayout;

    iput-object p5, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->val$table2:Landroid/widget/TableLayout;

    iput-object p6, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->val$pieList2:Ljava/util/List;

    iput-object p7, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->val$table3:Landroid/widget/TableLayout;

    iput-object p8, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->val$table4:Landroid/widget/TableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const v13, 0x7f0700c9

    const v12, 0x7f0700c8

    const/4 v11, 0x0

    .line 159
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;

    iget-object v1, v1, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f070095

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->val$data0:Ljava/util/HashMap;

    const-string v3, "data"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const-string v3, "\u30e9\u30a4\u30f3\u30c1\u30e3\u30fc\u30c8"

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->val$data0:Ljava/util/HashMap;

    const-string v5, "max"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->val$data0:Ljava/util/HashMap;

    const-string v10, "min"

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;-><init>(Landroid/view/View;Ljava/util/List;Ljava/lang/String;FF)V

    .line 160
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->val$data0:Ljava/util/HashMap;

    const-string v3, "myWinPer"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->val$data0:Ljava/util/HashMap;

    const-string v3, "allSum"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u56de"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->val$data0:Ljava/util/HashMap;

    const-string v3, "winSum"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u56de"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0701c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TableLayout;

    .line 165
    .local v6, "tbLay1":Landroid/widget/TableLayout;
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0701c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TableLayout;

    .line 166
    .local v7, "tbLay2":Landroid/widget/TableLayout;
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0701c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TableLayout;

    .line 167
    .local v8, "tbLay3":Landroid/widget/TableLayout;
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0701c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TableLayout;

    .line 169
    .local v9, "tbLay4":Landroid/widget/TableLayout;
    invoke-virtual {v6}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 170
    invoke-virtual {v7}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 171
    invoke-virtual {v8}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 172
    invoke-virtual {v9}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 175
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->val$pieList1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 176
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;

    iget-object v1, v1, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->val$pieList1:Ljava/util/List;

    const-string v3, "\u30d4\u30a2\u30c1\u30e3\u30fc\u30c8"

    invoke-direct {v0, v1, v2, v3}, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;-><init>(Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->val$table1:Landroid/widget/TableLayout;

    invoke-virtual {v6, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 182
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->val$table2:Landroid/widget/TableLayout;

    invoke-virtual {v7, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 185
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->val$pieList2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 186
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;

    iget-object v1, v1, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->val$pieList2:Ljava/util/List;

    const-string v3, "\u30d4\u30a2\u30c1\u30e3\u30fc\u30c8"

    invoke-direct {v0, v1, v2, v3}, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;-><init>(Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 191
    :goto_1
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->val$table3:Landroid/widget/TableLayout;

    invoke-virtual {v8, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->val$table4:Landroid/widget/TableLayout;

    invoke-virtual {v9, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 193
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
