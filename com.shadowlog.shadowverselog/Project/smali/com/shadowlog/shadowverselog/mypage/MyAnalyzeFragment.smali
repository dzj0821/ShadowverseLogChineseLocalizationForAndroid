.class public Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;
.super Landroid/support/v4/app/Fragment;
.source "MyAnalyzeFragment.java"


# instance fields
.field private flag:Z

.field private formatSet:Ljava/util/ArrayList;

.field private prieodSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->flag:Z

    return-void
.end method

.method static synthetic access$000(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->prieodSet:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->formatSet:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public static newInstances()Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;
    .locals 2

    .prologue
    .line 67
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;-><init>()V

    .line 68
    .local v1, "fm":Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    return-object v1
.end method


# virtual methods
.method public makeTableLayout(Ljava/util/List;IZ)Landroid/widget/TableLayout;
    .locals 17
    .param p2, "tableLayoutR"    # I
    .param p3, "thumbFlaf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;",
            ">;>;IZ)",
            "Landroid/widget/TableLayout;"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "mList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;>;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 206
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const/4 v14, 0x0

    move/from16 v0, p2

    invoke-virtual {v6, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    .line 208
    .local v1, "TableLay":Landroid/widget/TableLayout;
    const/4 v5, 0x0

    .line 209
    .local v5, "i":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 211
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;>;"
    const v14, 0x7f090066

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v6, v14, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TableRow;

    .line 213
    .local v11, "tableRow":Landroid/widget/TableRow;
    const v14, 0x7f070185

    invoke-virtual {v11, v14}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 214
    .local v7, "name":Landroid/widget/TextView;
    const v14, 0x7f070184

    invoke-virtual {v11, v14}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 215
    .local v8, "namelayout":Landroid/widget/LinearLayout;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v14, v14, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->RowLabel:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    if-eqz p3, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v14, v14, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->Leader:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lez v14, :cond_0

    .line 219
    const v14, 0x7f07017f

    invoke-virtual {v11, v14}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 220
    .local v12, "thumb":Landroid/widget/ImageView;
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    sget-object v16, Lcom/shadowlog/shadowverselog/lib/Defines;->thumbResource:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v14, v14, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->Leader:Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    .end local v12    # "thumb":Landroid/widget/ImageView;
    :cond_0
    const v14, 0x7f070186

    invoke-virtual {v11, v14}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 225
    .local v4, "enc":Landroid/widget/TextView;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v14, v14, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->per:Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "%"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    const v14, 0x7f070187

    invoke-virtual {v11, v14}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 228
    .local v10, "sum":Landroid/widget/TextView;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v14, v14, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    const v14, 0x7f070188

    invoke-virtual {v11, v14}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 231
    .local v13, "win":Landroid/widget/TextView;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v14, v14, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    const v14, 0x7f070189

    invoke-virtual {v11, v14}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 234
    .local v9, "per":Landroid/widget/TextView;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v14, v14, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_per:Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "%"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    add-int/lit8 v14, v5, 0x1

    rem-int/lit8 v14, v14, 0x2

    if-nez v14, :cond_1

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v16, 0x7f040021

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 239
    .local v2, "color":I
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 240
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 241
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 242
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 243
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 246
    .end local v2    # "color":I
    :cond_1
    new-instance v14, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v14}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    invoke-virtual {v1, v11, v14}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    add-int/lit8 v5, v5, 0x1

    .line 248
    goto/16 :goto_0

    .line 249
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;>;"
    .end local v4    # "enc":Landroid/widget/TextView;
    .end local v7    # "name":Landroid/widget/TextView;
    .end local v8    # "namelayout":Landroid/widget/LinearLayout;
    .end local v9    # "per":Landroid/widget/TextView;
    .end local v10    # "sum":Landroid/widget/TextView;
    .end local v11    # "tableRow":Landroid/widget/TableRow;
    .end local v13    # "win":Landroid/widget/TextView;
    :cond_2
    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 303
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 304
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->setHasOptionsMenu(Z)V

    .line 305
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    const-string v0, "MyAnalyzeFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    const-string v0, "MyAnalyzeFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const v0, 0x7f09003a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->view:Landroid/view/View;

    .line 103
    iget-boolean v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->flag:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->updateListData()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->flag:Z

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 289
    const-string v0, "MyAnalyzeFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 291
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 283
    const-string v0, "MyAnalyzeFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 285
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 271
    const-string v0, "MyAnalyzeFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 273
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 265
    const-string v0, "MyAnalyzeFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 267
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 259
    const-string v0, "MyAnalyzeFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 261
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 277
    const-string v0, "MyAnalyzeFragment"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 279
    return-void
.end method

.method public updateListData()V
    .locals 2

    .prologue
    .line 112
    const-string v0, "MyAnalyzeFragment"

    const-string v1, "updateListData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/MyPageActivity;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/MyPageActivity;->prieodSet:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->prieodSet:Ljava/util/HashMap;

    .line 114
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/MyPageActivity;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/MyPageActivity;->formatSet:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->formatSet:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 196
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 197
    return-void
.end method
