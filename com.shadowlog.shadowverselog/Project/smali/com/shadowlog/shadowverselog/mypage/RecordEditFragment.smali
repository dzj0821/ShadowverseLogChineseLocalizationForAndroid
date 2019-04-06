.class public Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;
.super Landroid/support/v4/app/Fragment;
.source "RecordEditFragment.java"

# interfaces
.implements Lcom/shadowlog/shadowverselog/lib/DataFederate$DataFederateCallbacks;


# static fields
.field private static fm:Landroid/support/v4/app/Fragment;


# instance fields
.field private bsDeck:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private commitFlag:Z

.field private id:I

.field private myDeck:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private myDeckToDeckID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private offline_mode:Z

.field private sessionID:Ljava/lang/String;

.field private userID:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->id:I

    return-void
.end method

.method static synthetic access$000(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->onCommit(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->dataRemove()V

    return-void
.end method

.method static synthetic access$200(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;IZLandroid/widget/Spinner;II)V
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/widget/Spinner;
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->onChangeDeckAdapter(IZLandroid/widget/Spinner;II)V

    return-void
.end method

.method static synthetic access$402(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->commitFlag:Z

    return p1
.end method

.method static synthetic access$500(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    .prologue
    .line 52
    iget v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->id:I

    return v0
.end method

.method static synthetic access$600(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    .prologue
    .line 52
    iget v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->userID:I

    return v0
.end method

.method static synthetic access$700(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->offline_mode:Z

    return v0
.end method

.method static synthetic access$800(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method private dataRemove()V
    .locals 3

    .prologue
    .line 633
    const-string v0, "RecordEditFragment"

    const-string v1, "dataRemove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->id:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->commitFlag:Z

    if-eqz v0, :cond_0

    .line 635
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u3053\u306e\u6226\u7e3e\u3092\u524a\u9664\u3057\u3066\u3088\u308d\u3057\u3044\u3067\u3059\u304b\uff1f"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u306f\u3044"

    new-instance v2, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$7;

    invoke-direct {v2, p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$7;-><init>(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;)V

    .line 636
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u3044\u3044\u3048"

    new-instance v2, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$6;

    invoke-direct {v2, p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$6;-><init>(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;)V

    .line 654
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 656
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 658
    :cond_0
    return-void
.end method

.method public static newInstances()Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;
    .locals 2

    .prologue
    .line 70
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;-><init>()V

    .line 71
    .local v1, "fm":Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->setArguments(Landroid/os/Bundle;)V

    .line 73
    return-object v1
.end method

.method public static newInstances(I)Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;
    .locals 3
    .param p0, "num"    # I

    .prologue
    .line 76
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;-><init>()V

    .line 77
    .local v1, "fm":Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "ID"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->setArguments(Landroid/os/Bundle;)V

    .line 80
    return-object v1
.end method

.method private onChangeDeckAdapter(IZLandroid/widget/Spinner;II)V
    .locals 6
    .param p1, "leader"    # I
    .param p2, "myflag"    # Z
    .param p3, "view"    # Landroid/widget/Spinner;
    .param p4, "defDeck"    # I
    .param p5, "defMyDeck"    # I

    .prologue
    .line 294
    const/16 v4, 0x9

    if-ge p1, v4, :cond_5

    if-lez p1, :cond_5

    .line 295
    const/4 v3, -0x1

    .local v3, "pos":I
    const/4 v1, 0x0

    .line 296
    .local v1, "i":I
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090060

    invoke-direct {v0, v4, v5}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 297
    .local v0, "adapter":Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;
    const v4, 0x7f090061

    invoke-virtual {v0, v4}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->setDropDownViewResource(I)V

    .line 298
    if-eqz p2, :cond_1

    .line 299
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->myDeck:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 300
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->myDeck:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 301
    .local v2, "map":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v0, v2}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->add(Ljava/lang/Object;)V

    .line 302
    if-gez v3, :cond_0

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p5, v4, :cond_0

    move v3, v1

    .line 303
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 304
    goto :goto_0

    .line 307
    .end local v2    # "map":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->bsDeck:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 308
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->bsDeck:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 309
    .restart local v2    # "map":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v0, v2}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->add(Ljava/lang/Object;)V

    .line 310
    if-gez v3, :cond_2

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p4, v4, :cond_2

    move v3, v1

    .line 311
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 312
    goto :goto_1

    .line 314
    .end local v2    # "map":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {p3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 315
    if-gez v3, :cond_4

    const/4 v3, 0x0

    .line 316
    :cond_4
    invoke-virtual {p3, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 318
    .end local v0    # "adapter":Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;
    .end local v1    # "i":I
    .end local v3    # "pos":I
    :cond_5
    return-void
.end method

.method private onCommit(I)V
    .locals 14
    .param p1, "result"    # I

    .prologue
    const/4 v13, 0x3

    const v12, 0x7f07001b

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 476
    const-string v7, "RecordEditFragment"

    const-string v8, "onCommit"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-boolean v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->commitFlag:Z

    if-eqz v7, :cond_7

    .line 478
    iput-boolean v11, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->commitFlag:Z

    .line 479
    new-instance v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;

    invoke-direct {v4}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;-><init>()V

    .line 482
    .local v4, "resRst":Lcom/shadowlog/shadowverselog/struct/RecordStruct;
    iget v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->id:I

    if-lez v7, :cond_0

    .line 483
    iget v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->aid:Ljava/lang/Integer;

    .line 487
    :cond_0
    iget v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->userID:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->User_id:Ljava/lang/Integer;

    .line 490
    iget-object v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    const v8, 0x7f0700ef

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioGroup;

    invoke-virtual {v7}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 518
    :goto_0
    iget-object v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    const v8, 0x7f0701a8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 519
    .local v3, "myDeckSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 520
    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u2605"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 521
    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->Deck_id:Ljava/lang/Integer;

    .line 522
    iget-object v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->myDeckToDeckID:Ljava/util/Map;

    iget-object v8, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myDeckType:Ljava/lang/Integer;

    .line 529
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    const v8, 0x7f0700f2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioGroup;

    invoke-virtual {v7}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    .line 557
    :goto_2
    iget-object v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    const v8, 0x7f0701aa

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 558
    .local v6, "vsDeckSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    .line 559
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsDeckType:Ljava/lang/Integer;

    .line 563
    :cond_2
    iget-object v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    const v8, 0x7f0700f0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioGroup;

    invoke-virtual {v7}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v7

    packed-switch v7, :pswitch_data_2

    .line 573
    :goto_3
    iget-object v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    const v8, 0x7f0701a6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 574
    .local v1, "formatSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    .line 575
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->format:Ljava/lang/Integer;

    .line 579
    :cond_3
    iget-object v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    const v8, 0x7f0701a9

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 580
    .local v5, "turnSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v5, :cond_4

    .line 581
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->turn:Ljava/lang/Integer;

    .line 585
    :cond_4
    if-ne p1, v9, :cond_9

    .line 586
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->result:Ljava/lang/Integer;

    .line 592
    :cond_5
    :goto_4
    iget-object v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    const v8, 0x7f07005f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 593
    .local v2, "memo":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->memo:Ljava/lang/String;

    .line 598
    iget-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->ord:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myDeckType:Ljava/lang/Integer;

    .line 599
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsDeckType:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->offline_mode:Z

    if-nez v7, :cond_a

    iget-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->User_id:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_a

    .line 601
    :cond_6
    iget-object v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 602
    iget-object v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, "\u5165\u529b\u306b\u5fc5\u8981\u306a\u9805\u76ee\u304c\u9078\u629e\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    iput-boolean v9, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->commitFlag:Z

    .line 625
    .end local v1    # "formatSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "memo":Landroid/widget/TextView;
    .end local v3    # "myDeckSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "resRst":Lcom/shadowlog/shadowverselog/struct/RecordStruct;
    .end local v5    # "turnSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v6    # "vsDeckSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_7
    :goto_5
    return-void

    .line 492
    .restart local v4    # "resRst":Lcom/shadowlog/shadowverselog/struct/RecordStruct;
    :pswitch_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 495
    :pswitch_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 498
    :pswitch_2
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 501
    :pswitch_3
    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 504
    :pswitch_4
    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 507
    :pswitch_5
    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 510
    :pswitch_6
    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 513
    :pswitch_7
    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 524
    .restart local v3    # "myDeckSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_8
    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myDeckType:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 531
    :pswitch_8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    goto/16 :goto_2

    .line 534
    :pswitch_9
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    goto/16 :goto_2

    .line 537
    :pswitch_a
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    goto/16 :goto_2

    .line 540
    :pswitch_b
    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    goto/16 :goto_2

    .line 543
    :pswitch_c
    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    goto/16 :goto_2

    .line 546
    :pswitch_d
    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    goto/16 :goto_2

    .line 549
    :pswitch_e
    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    goto/16 :goto_2

    .line 552
    :pswitch_f
    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    goto/16 :goto_2

    .line 565
    .restart local v6    # "vsDeckSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :pswitch_10
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->ord:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 568
    :pswitch_11
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->ord:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 587
    .restart local v1    # "formatSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v5    # "turnSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_9
    if-ne p1, v10, :cond_5

    .line 588
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->result:Ljava/lang/Integer;

    goto/16 :goto_4

    .line 604
    .restart local v2    # "memo":Landroid/widget/TextView;
    :cond_a
    iget-object v7, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->memo:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xc8

    if-le v7, v8, :cond_b

    .line 605
    iget-object v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 606
    iget-object v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, "\u30e1\u30e2\u306f\u6700\u5927200\u6587\u5b57\u307e\u3067\u3067\u3059\u3002"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iput-boolean v9, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->commitFlag:Z

    goto/16 :goto_5

    .line 610
    :cond_b
    iget-boolean v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->offline_mode:Z

    if-nez v7, :cond_d

    .line 612
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/DataFederate;

    iget v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->userID:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->sessionID:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Lcom/shadowlog/shadowverselog/lib/DataFederate;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 613
    .local v0, "dFederate":Lcom/shadowlog/shadowverselog/lib/DataFederate;
    invoke-virtual {v0, p0}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->setCallbacks(Lcom/shadowlog/shadowverselog/lib/DataFederate$DataFederateCallbacks;)V

    .line 614
    iget v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->id:I

    if-lez v7, :cond_c

    .line 615
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "up"

    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->putHash()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v0, v7, v8, v9}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->onConnect(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_5

    .line 617
    :cond_c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "in"

    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->putHash()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v0, v7, v8, v9}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->onConnect(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_5

    .line 621
    .end local v0    # "dFederate":Lcom/shadowlog/shadowverselog/lib/DataFederate;
    :cond_d
    invoke-virtual {p0, v4}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->dataSaveOffline(Lcom/shadowlog/shadowverselog/struct/RecordStruct;)V

    goto/16 :goto_5

    .line 490
    :pswitch_data_0
    .packed-switch 0x7f0700f8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 529
    :pswitch_data_1
    .packed-switch 0x7f070102
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 563
    :pswitch_data_2
    .packed-switch 0x7f070100
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private onDeckListSet()V
    .locals 13

    .prologue
    .line 260
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->bsDeck:Ljava/util/Map;

    .line 261
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->myDeck:Ljava/util/Map;

    .line 262
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->myDeckToDeckID:Ljava/util/Map;

    .line 264
    new-instance v3, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;-><init>(Landroid/content/Context;)V

    .line 265
    .local v3, "mddb":Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;
    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->open()V

    .line 266
    sget-object v6, Lcom/shadowlog/shadowverselog/lib/Defines;->leader:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 267
    .local v1, "e":Ljava/util/Map$Entry;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select * from SV_MYDECK where delete_flag=0 and myLeader="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " order by update_date desc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 268
    .local v4, "selAry":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 269
    .local v5, "x":I
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->myDeck:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 271
    .local v2, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->myDeck:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    new-instance v10, Landroid/util/Pair;

    const-string v7, "aid"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u2605"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v7, "name"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v11, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->myDeckToDeckID:Ljava/util/Map;

    const-string v6, "aid"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v6, "myDeckType"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 275
    .end local v1    # "e":Ljava/util/Map$Entry;
    .end local v2    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "selAry":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v5    # "x":I
    :cond_1
    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->close()V

    .line 277
    new-instance v0, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;-><init>(Landroid/content/Context;)V

    .line 278
    .local v0, "dtdb":Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->open()V

    .line 279
    sget-object v6, Lcom/shadowlog/shadowverselog/lib/Defines;->leader:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 280
    .restart local v1    # "e":Ljava/util/Map$Entry;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select * from SV_DECKTYPE where leader="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " order by _id asc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 281
    .restart local v4    # "selAry":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 282
    .restart local v5    # "x":I
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->bsDeck:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 284
    .restart local v2    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->bsDeck:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    new-instance v10, Landroid/util/Pair;

    const-string v7, "did"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "name"

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v10, v7, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 287
    .end local v1    # "e":Ljava/util/Map$Entry;
    .end local v2    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "selAry":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v5    # "x":I
    :cond_3
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->close()V

    .line 288
    return-void
.end method

.method private onInitFormSet()V
    .locals 14

    .prologue
    const v13, 0x7f0700f0

    const/4 v2, 0x1

    const v12, 0x7f0700f2

    const v3, 0x7f0700ef

    const/4 v11, 0x0

    .line 360
    const-string v0, "RecordEditFragment"

    const-string v1, "onInitFormSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;

    invoke-direct {v8}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;-><init>()V

    .line 364
    .local v8, "def":Lcom/shadowlog/shadowverselog/struct/RecordStruct;
    iget v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->id:I

    if-lez v0, :cond_e

    .line 366
    new-instance v9, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;-><init>(Landroid/content/Context;)V

    .line 367
    .local v9, "rdb":Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;
    invoke-virtual {v9}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->open()V

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select * from SV_RECORD where aid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 369
    .local v7, "chk":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v9}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->close()V

    .line 370
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 371
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "myLeader"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "myLeader"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    .line 372
    :cond_0
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "myDeckType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "myDeckType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myDeckType:Ljava/lang/Integer;

    .line 373
    :cond_1
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "Deck_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "Deck_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->Deck_id:Ljava/lang/Integer;

    .line 374
    :cond_2
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "vsLeader"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "vsLeader"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    .line 375
    :cond_3
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "vsDeckType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "vsDeckType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsDeckType:Ljava/lang/Integer;

    .line 376
    :cond_4
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "ord"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "ord"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->ord:Ljava/lang/Integer;

    .line 377
    :cond_5
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "format"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "format"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->format:Ljava/lang/Integer;

    .line 378
    :cond_6
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "turn"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "turn"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->turn:Ljava/lang/Integer;

    .line 379
    :cond_7
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "result"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "result"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->result:Ljava/lang/Integer;

    .line 380
    :cond_8
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "memo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "memo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->memo:Ljava/lang/String;

    .line 395
    .end local v7    # "chk":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v9    # "rdb":Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;
    :cond_9
    :goto_0
    iget-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 412
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 417
    :goto_1
    iget-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myDeckType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_a

    .line 418
    iget-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    const v3, 0x7f0701a8

    .line 419
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iget-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myDeckType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->Deck_id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    .line 418
    invoke-direct/range {v0 .. v5}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->onChangeDeckAdapter(IZLandroid/widget/Spinner;II)V

    .line 423
    :cond_a
    iget-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 440
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 445
    :goto_2
    iget-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsDeckType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_b

    .line 446
    iget-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    const v3, 0x7f0701aa

    .line 447
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iget-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsDeckType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v0, p0

    move v5, v11

    .line 446
    invoke-direct/range {v0 .. v5}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->onChangeDeckAdapter(IZLandroid/widget/Spinner;II)V

    .line 450
    :cond_b
    iget-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->ord:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 453
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 457
    :goto_3
    iget-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->format:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->setSpinnerFormat(I)V

    .line 460
    iget-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->turn:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->setSpinnerTurn(I)V

    .line 463
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->memo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->result:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_d

    .line 467
    iget-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->result:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_c

    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    const v1, 0x7f070047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060055

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 468
    :cond_c
    iget-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->result:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    const v1, 0x7f070048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060055

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 470
    :cond_d
    return-void

    .line 384
    :cond_e
    new-instance v10, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;-><init>(Landroid/content/Context;)V

    .line 385
    .local v10, "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    invoke-virtual {v10}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->open()V

    .line 386
    invoke-virtual {v10}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doSelectAll()Ljava/util/List;

    move-result-object v6

    .line 387
    .local v6, "_def":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v10}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->close()V

    .line 388
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "def_myLeader"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    .line 389
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "def_myDeckType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myDeckType:Ljava/lang/Integer;

    .line 390
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "def_Deck_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->Deck_id:Ljava/lang/Integer;

    .line 391
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "def_format"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v8, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->format:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 396
    .end local v6    # "_def":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v10    # "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    :pswitch_0
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0700f8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_1

    .line 398
    :pswitch_1
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0700f9

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_1

    .line 400
    :pswitch_2
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0700fa

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_1

    .line 402
    :pswitch_3
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0700fb

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_1

    .line 404
    :pswitch_4
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0700fc

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_1

    .line 406
    :pswitch_5
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0700fd

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_1

    .line 408
    :pswitch_6
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0700fe

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_1

    .line 410
    :pswitch_7
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0700ff

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_1

    .line 424
    :pswitch_8
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f070102

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_2

    .line 426
    :pswitch_9
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f070103

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_2

    .line 428
    :pswitch_a
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f070104

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_2

    .line 430
    :pswitch_b
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f070105

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_2

    .line 432
    :pswitch_c
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f070106

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_2

    .line 434
    :pswitch_d
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f070107

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_2

    .line 436
    :pswitch_e
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f070108

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_2

    .line 438
    :pswitch_f
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f070109

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_2

    .line 451
    :pswitch_10
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f070100

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_3

    .line 452
    :pswitch_11
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f070101

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_3

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 423
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 450
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private setSpinnerFormat(I)V
    .locals 9
    .param p1, "def"    # I

    .prologue
    const v8, 0x7f0701a6

    .line 322
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090060

    invoke-direct {v0, v5, v6}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 323
    .local v0, "adapterF":Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;
    const v5, 0x7f090061

    invoke-virtual {v0, v5}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->setDropDownViewResource(I)V

    .line 324
    const/4 v3, 0x0

    .local v3, "pos":I
    const/4 v1, 0x0

    .line 326
    .local v1, "i":I
    new-instance v4, Ljava/util/ArrayList;

    sget-object v5, Lcom/shadowlog/shadowverselog/lib/Defines;->format:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 327
    .local v4, "sortedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 328
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 329
    .local v2, "key":Ljava/lang/Integer;
    new-instance v6, Landroid/util/Pair;

    sget-object v7, Lcom/shadowlog/shadowverselog/lib/Defines;->format:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->add(Ljava/lang/Object;)V

    .line 330
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne p1, v6, :cond_0

    move v3, v1

    .line 331
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 332
    goto :goto_0

    .line 333
    .end local v2    # "key":Ljava/lang/Integer;
    :cond_1
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 334
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 335
    return-void
.end method

.method private setSpinnerTurn(I)V
    .locals 9
    .param p1, "x"    # I

    .prologue
    const v8, 0x7f0701a9

    .line 339
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090060

    invoke-direct {v0, v5, v6}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 340
    .local v0, "adapterT":Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;
    const v5, 0x7f090061

    invoke-virtual {v0, v5}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->setDropDownViewResource(I)V

    .line 342
    new-instance v4, Ljava/util/ArrayList;

    sget-object v5, Lcom/shadowlog/shadowverselog/lib/Defines;->turn:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 343
    .local v4, "sortedKeys2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 344
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, -0x1

    .line 345
    .local v3, "sel":I
    new-instance v5, Landroid/util/Pair;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->add(Ljava/lang/Object;)V

    .line 346
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 347
    .local v2, "key":Ljava/lang/Integer;
    new-instance v6, Landroid/util/Pair;

    sget-object v7, Lcom/shadowlog/shadowverselog/lib/Defines;->turn:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->add(Ljava/lang/Object;)V

    .line 348
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p1, :cond_0

    if-gez v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 349
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 350
    goto :goto_0

    .line 351
    .end local v2    # "key":Ljava/lang/Integer;
    :cond_1
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 352
    if-ltz v3, :cond_2

    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 353
    :cond_2
    return-void
.end method


# virtual methods
.method public dataFederateCallback(Lcom/shadowlog/shadowverselog/struct/SyncStruct;)V
    .locals 13
    .param p1, "result"    # Lcom/shadowlog/shadowverselog/struct/SyncStruct;

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    const v11, 0x7f07001b

    .line 666
    const-string v8, "RecordEditFragment"

    const-string v9, "dataFederateCallback"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->putError()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->putError()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 668
    :cond_0
    const-string v8, "RecordEditFragment"

    const-string v9, "dataFederateCallback - Success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->putResult()Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;

    move-result-object v8

    invoke-virtual {v8}, Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;->putRecord()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 672
    .local v3, "resHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;

    invoke-direct {v4}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;-><init>()V

    .line 673
    .local v4, "resRecord":Lcom/shadowlog/shadowverselog/struct/RecordStruct;
    invoke-virtual {v4, v3}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->setHash(Ljava/util/Map;)V

    .line 676
    new-instance v2, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;-><init>(Landroid/content/Context;)V

    .line 677
    .local v2, "rdb":Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->open()V

    .line 678
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "select aid from SV_RECORD where aid=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->aid:Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 679
    .local v1, "chk":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 680
    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->putHash2()Ljava/util/HashMap;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "aid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->aid:Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->doUpdate(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 684
    :goto_0
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->close()V

    .line 687
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 688
    .local v6, "set":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "def_myLeader"

    iget-object v9, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const-string v8, "def_myDeckType"

    iget-object v9, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myDeckType:Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    const-string v8, "def_Deck_id"

    iget-object v9, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->Deck_id:Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const-string v8, "def_format"

    iget-object v9, v4, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->format:Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    new-instance v7, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;-><init>(Landroid/content/Context;)V

    .line 693
    .local v7, "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    invoke-virtual {v7}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->open()V

    .line 694
    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doUpdate(Ljava/util/Map;Ljava/lang/String;)V

    .line 695
    invoke-virtual {v7}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->close()V

    .line 700
    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 701
    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    iput-boolean v12, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->commitFlag:Z

    .line 703
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "\u6226\u7e3e\u306e\u8a18\u9332\u306b\u6210\u529f\u3057\u307e\u3057\u305f!"

    invoke-static {v8, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 704
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    check-cast v8, Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-virtual {v8}, Lcom/shadowlog/shadowverselog/MyPageActivity;->onAllRefresh()V

    .line 705
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 716
    .end local v1    # "chk":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "rdb":Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;
    .end local v3    # "resHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "resRecord":Lcom/shadowlog/shadowverselog/struct/RecordStruct;
    .end local v6    # "set":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    :goto_1
    return-void

    .line 682
    .restart local v1    # "chk":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v2    # "rdb":Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;
    .restart local v3    # "resHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "resRecord":Lcom/shadowlog/shadowverselog/struct/RecordStruct;
    :cond_1
    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->putHash2()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->doInsert(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 709
    .end local v1    # "chk":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "rdb":Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;
    .end local v3    # "resHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "resRecord":Lcom/shadowlog/shadowverselog/struct/RecordStruct;
    :cond_2
    const-string v8, "RecordEditFragment"

    const-string v9, "dataFederateCallback - Error"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const-string v0, ""

    .line 711
    .local v0, "aMessage":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->putError()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "s":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 712
    .end local v5    # "s":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 713
    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    iput-boolean v12, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->commitFlag:Z

    goto :goto_1
.end method

.method public dataSaveOffline(Lcom/shadowlog/shadowverselog/struct/RecordStruct;)V
    .locals 14
    .param p1, "rst"    # Lcom/shadowlog/shadowverselog/struct/RecordStruct;

    .prologue
    const-wide/16 v12, 0x3e8

    const v11, 0x7f07001b

    const/4 v10, 0x1

    .line 724
    new-instance v2, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;-><init>(Landroid/content/Context;)V

    .line 726
    .local v2, "rdb":Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;
    iget-wide v6, p1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->play_date:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 727
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v12

    iput-wide v6, p1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->play_date:J

    .line 729
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v12

    iput-wide v6, p1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->update_date:J

    .line 731
    iget v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->id:I

    if-lez v5, :cond_1

    .line 735
    iget v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->aid:Ljava/lang/Integer;

    .line 737
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->open()V

    .line 738
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->putHash2()Ljava/util/HashMap;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->id:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->doUpdate(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 739
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->close()V

    .line 765
    :goto_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 766
    .local v3, "set":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "def_myLeader"

    iget-object v6, p1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    const-string v5, "def_myDeckType"

    iget-object v6, p1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myDeckType:Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    const-string v5, "def_Deck_id"

    iget-object v6, p1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->Deck_id:Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    const-string v5, "def_format"

    iget-object v6, p1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->format:Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    new-instance v4, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;-><init>(Landroid/content/Context;)V

    .line 771
    .local v4, "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->open()V

    .line 772
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doUpdate(Ljava/util/Map;Ljava/lang/String;)V

    .line 773
    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->close()V

    .line 778
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 779
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    iput-boolean v10, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->commitFlag:Z

    .line 781
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "\u6226\u7e3e\u306e\u8a18\u9332\u306b\u6210\u529f\u3057\u307e\u3057\u305f!"

    invoke-static {v5, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 782
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-virtual {v5}, Lcom/shadowlog/shadowverselog/MyPageActivity;->onAllRefresh()V

    .line 783
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 784
    return-void

    .line 745
    .end local v3    # "set":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    :cond_1
    iget-wide v6, p1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->update_date:J

    iput-wide v6, p1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->insert_date:J

    .line 748
    const/4 v0, 0x0

    .line 749
    .local v0, "aidMax":I
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->open()V

    .line 750
    const-string v5, "select aid from SV_RECORD where 1 order by aid desc limit 1"

    invoke-virtual {v2, v5}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 751
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->close()V

    .line 752
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 753
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "aid"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    .line 757
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->aid:Ljava/lang/Integer;

    .line 759
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->open()V

    .line 760
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->putHash2()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->doInsert(Ljava/util/Map;)V

    .line 761
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->close()V

    goto/16 :goto_0

    .line 755
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 89
    const-string v3, "RecordEditFragment"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ID"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->id:I

    .line 96
    new-instance v1, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;-><init>(Landroid/content/Context;)V

    .line 97
    .local v1, "idb":Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->open()V

    .line 98
    const-string v3, "offline"

    invoke-virtual {v1, v3}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 99
    iput-boolean v6, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->offline_mode:Z

    .line 103
    :goto_0
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->close()V

    .line 106
    new-instance v2, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;-><init>(Landroid/content/Context;)V

    .line 107
    .local v2, "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->open()V

    .line 109
    :try_start_0
    const-string v3, "User_id"

    invoke-virtual {v2, v3}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->userID:I

    .line 110
    const-string v3, "session_id"

    invoke-virtual {v2, v3}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->sessionID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_1
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->close()V

    .line 114
    iput-boolean v6, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->commitFlag:Z

    .line 117
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->onDeckListSet()V

    .line 118
    return-void

    .line 101
    .end local v2    # "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    :cond_0
    iput-boolean v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->offline_mode:Z

    goto :goto_0

    .line 111
    .restart local v2    # "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iput v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->userID:I

    const-string v3, ""

    iput-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->sessionID:Ljava/lang/String;

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f070063

    const v10, 0x7f070054

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 125
    const-string v5, "RecordEditFragment"

    const-string v6, "onCreateView"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const v5, 0x7f090041

    invoke-virtual {p1, v5, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    .line 129
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0701e0

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->id:I

    if-lez v5, :cond_0

    .line 133
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "\u6226\u7e3e\u3092\u65b0\u3057\u304f\u8a18\u9332\u3059\u308b"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :goto_0
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    const v6, 0x7f0701b9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fontawesome-webfont.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 140
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    const v6, 0x7f0701bf

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fontawesome-webfont.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 141
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    const v6, 0x7f0701bb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fontawesome-webfont.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 142
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    const v6, 0x7f0701b7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fontawesome-webfont.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 143
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    const v6, 0x7f0701be

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fontawesome-webfont.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 144
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    const v6, 0x7f0701b8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fontawesome-webfont.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 145
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fontawesome-webfont.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 149
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->onInitFormSet()V

    .line 152
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->setLeaderChangeEvent()V

    .line 157
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    const v6, 0x7f070048

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 158
    .local v2, "commit_button1":Landroid/widget/Button;
    new-instance v0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$1;

    invoke-direct {v0, p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;)V

    .line 164
    .local v0, "clickListenerCommit":Landroid/view/View$OnClickListener;
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    const v6, 0x7f070047

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 166
    .local v3, "commit_button2":Landroid/widget/Button;
    new-instance v0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$2;

    .end local v0    # "clickListenerCommit":Landroid/view/View$OnClickListener;
    invoke-direct {v0, p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$2;-><init>(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;)V

    .line 172
    .restart local v0    # "clickListenerCommit":Landroid/view/View$OnClickListener;
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 176
    .local v4, "delete_button":Landroid/widget/Button;
    iget v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->id:I

    if-lez v5, :cond_1

    .line 177
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$3;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$3;-><init>(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;)V

    .line 184
    .local v1, "clickListenerDelete":Landroid/view/View$OnClickListener;
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    .end local v1    # "clickListenerDelete":Landroid/view/View$OnClickListener;
    :goto_1
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    return-object v5

    .line 135
    .end local v0    # "clickListenerCommit":Landroid/view/View$OnClickListener;
    .end local v2    # "commit_button1":Landroid/widget/Button;
    .end local v3    # "commit_button2":Landroid/widget/Button;
    .end local v4    # "delete_button":Landroid/widget/Button;
    :cond_0
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "\u6226\u7e3e\u3092\u7de8\u96c6\u3059\u308b"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 186
    .restart local v0    # "clickListenerCommit":Landroid/view/View$OnClickListener;
    .restart local v2    # "commit_button1":Landroid/widget/Button;
    .restart local v3    # "commit_button2":Landroid/widget/Button;
    .restart local v4    # "delete_button":Landroid/widget/Button;
    :cond_1
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 819
    const-string v0, "RecordEditFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 822
    iput-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->bsDeck:Ljava/util/Map;

    .line 823
    iput-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->myDeck:Ljava/util/Map;

    .line 824
    iput-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->myDeckToDeckID:Ljava/util/Map;

    .line 825
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 812
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 814
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 815
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 802
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 803
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 797
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 798
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 792
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 793
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 807
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 808
    return-void
.end method

.method public setLeaderChangeEvent()V
    .locals 2

    .prologue
    .line 198
    const-string v0, "RecordEditFragment"

    const-string v1, "onInitWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    const v1, 0x7f0700ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$4;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$4;-><init>(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 226
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->view:Landroid/view/View;

    const v1, 0x7f0700f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$5;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$5;-><init>(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 253
    return-void
.end method
