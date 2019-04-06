.class public Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;
.super Landroid/support/v4/app/Fragment;
.source "Record2EditFragment.java"

# interfaces
.implements Lcom/shadowlog/shadowverselog/lib/DataFederate$DataFederateCallbacks;
.implements Lcom/shadowlog/shadowverselog/function/DeckHashToDeck$DeckHashCallbacks;


# static fields
.field private static fm:Landroid/support/v4/app/Fragment;


# instance fields
.field private commitFlag:Z

.field private deck_url:Ljava/lang/String;

.field private id:I

.field private offline_mode:Z

.field private sessionID:Ljava/lang/String;

.field private userID:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->id:I

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->deck_url:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->onCommit()V

    return-void
.end method

.method static synthetic access$100(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->dataRemove()V

    return-void
.end method

.method static synthetic access$200(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->commitFlag:Z

    return p1
.end method

.method static synthetic access$400(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    .prologue
    .line 43
    iget v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->id:I

    return v0
.end method

.method static synthetic access$500(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    .prologue
    .line 43
    iget v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->userID:I

    return v0
.end method

.method static synthetic access$600(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->offline_mode:Z

    return v0
.end method

.method static synthetic access$700(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method private dataRemove()V
    .locals 3

    .prologue
    .line 343
    const-string v0, "RecordEditFragment"

    const-string v1, "dataRemove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->id:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->commitFlag:Z

    if-eqz v0, :cond_0

    .line 346
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u3053\u306e\u6226\u7e3e\u3092\u524a\u9664\u3057\u3066\u3088\u308d\u3057\u3044\u3067\u3059\u304b\uff1f"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u306f\u3044"

    new-instance v2, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$6;

    invoke-direct {v2, p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$6;-><init>(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;)V

    .line 347
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u3044\u3044\u3048"

    new-instance v2, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$5;

    invoke-direct {v2, p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$5;-><init>(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;)V

    .line 364
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 368
    :cond_0
    return-void
.end method

.method public static newInstances()Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;
    .locals 2

    .prologue
    .line 58
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;-><init>()V

    .line 59
    .local v1, "fm":Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-object v1
.end method

.method public static newInstances(I)Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;
    .locals 3
    .param p0, "num"    # I

    .prologue
    .line 64
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;-><init>()V

    .line 65
    .local v1, "fm":Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "ID"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    return-object v1
.end method

.method private onCommit()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x7f07001b

    .line 258
    const-string v3, "RecordEditFragment"

    const-string v4, "onCommit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-boolean v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->commitFlag:Z

    if-eqz v3, :cond_2

    .line 260
    iput-boolean v6, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->commitFlag:Z

    .line 261
    new-instance v2, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;

    invoke-direct {v2}, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;-><init>()V

    .line 264
    .local v2, "resRst":Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;
    iget v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->id:I

    if-lez v3, :cond_0

    .line 265
    iget v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->aid:Ljava/lang/Integer;

    .line 269
    :cond_0
    iget v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->userID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->User_id:Ljava/lang/Integer;

    .line 272
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    const v4, 0x7f0700ef

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 297
    :goto_0
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    const v4, 0x7f0700f3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    invoke-virtual {v3}, Landroid/widget/RatingBar;->getRating()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->result:Ljava/lang/Integer;

    .line 300
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->deck_url:Ljava/lang/String;

    iput-object v3, v2, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->deck_url:Ljava/lang/String;

    .line 303
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    const v4, 0x7f07005f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 304
    .local v1, "memo":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->memo:Ljava/lang/String;

    .line 309
    iget-object v3, v2, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->myLeader:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->offline_mode:Z

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->User_id:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    .line 311
    :cond_1
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "\u5165\u529b\u306b\u5fc5\u8981\u306a\u9805\u76ee\u304c\u9078\u629e\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iput-boolean v7, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->commitFlag:Z

    .line 335
    .end local v1    # "memo":Landroid/widget/TextView;
    .end local v2    # "resRst":Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;
    :cond_2
    :goto_1
    return-void

    .line 274
    .restart local v2    # "resRst":Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;
    :pswitch_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->myLeader:Ljava/lang/Integer;

    goto :goto_0

    .line 277
    :pswitch_1
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->myLeader:Ljava/lang/Integer;

    goto :goto_0

    .line 280
    :pswitch_2
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->myLeader:Ljava/lang/Integer;

    goto :goto_0

    .line 283
    :pswitch_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->myLeader:Ljava/lang/Integer;

    goto :goto_0

    .line 286
    :pswitch_4
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 289
    :pswitch_5
    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 292
    :pswitch_6
    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 314
    .restart local v1    # "memo":Landroid/widget/TextView;
    :cond_3
    iget-object v3, v2, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->memo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc8

    if-le v3, v4, :cond_4

    .line 315
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "\u30e1\u30e2\u306f\u6700\u5927200\u6587\u5b57\u307e\u3067\u3067\u3059\u3002"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iput-boolean v7, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->commitFlag:Z

    goto :goto_1

    .line 320
    :cond_4
    iget-boolean v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->offline_mode:Z

    if-nez v3, :cond_6

    .line 322
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/DataFederate;

    iget v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->userID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->sessionID:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/shadowlog/shadowverselog/lib/DataFederate;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 323
    .local v0, "dFederate":Lcom/shadowlog/shadowverselog/lib/DataFederate;
    invoke-virtual {v0, p0}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->setCallbacks(Lcom/shadowlog/shadowverselog/lib/DataFederate$DataFederateCallbacks;)V

    .line 324
    iget v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->id:I

    if-lez v3, :cond_5

    .line 325
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "up"

    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->putHash()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->onConnect(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 327
    :cond_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "in"

    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->putHash()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->onConnect(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 331
    .end local v0    # "dFederate":Lcom/shadowlog/shadowverselog/lib/DataFederate;
    :cond_6
    invoke-virtual {p0, v2}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->dataSaveOffline(Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;)V

    goto/16 :goto_1

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x7f0700f8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private onInitFormSet()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const v6, 0x7f0700ef

    const/4 v5, 0x0

    .line 198
    const-string v3, "RecordEditFragment"

    const-string v4, "onInitFormSet"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;-><init>()V

    .line 202
    .local v1, "def":Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;
    iget v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->id:I

    if-lez v3, :cond_3

    .line 204
    new-instance v2, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;-><init>(Landroid/content/Context;)V

    .line 205
    .local v2, "rdb":Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->open()V

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select * from SV_RECORD_2PICK where aid=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 207
    .local v0, "chk":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->close()V

    .line 208
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 209
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "myLeader"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "myLeader"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->myLeader:Ljava/lang/Integer;

    .line 210
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "result"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "result"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->result:Ljava/lang/Integer;

    .line 211
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "deck_url"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "deck_url"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->deck_url:Ljava/lang/String;

    .line 212
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "memo"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "memo"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->memo:Ljava/lang/String;

    .line 217
    .end local v0    # "chk":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "rdb":Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;
    :cond_3
    iget-object v3, v1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->myLeader:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 232
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 237
    :goto_0
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    const v4, 0x7f0700f3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    iget-object v4, v1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->result:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/RatingBar;->setRating(F)V

    .line 240
    iget-object v3, v1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->deck_url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 241
    iget-object v3, v1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->deck_url:Ljava/lang/String;

    iput-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->deck_url:Ljava/lang/String;

    .line 242
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    const v4, 0x7f0700aa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    const v4, 0x7f0700ac

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    const v4, 0x7f0700ab

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 248
    :cond_4
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    const v4, 0x7f07005f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v4, v1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->memo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 250
    return-void

    .line 218
    :pswitch_0
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    const v4, 0x7f0700f8

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    const v4, 0x7f0700f9

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 222
    :pswitch_2
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    const v4, 0x7f0700fa

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_0

    .line 224
    :pswitch_3
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    const v4, 0x7f0700fb

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_0

    .line 226
    :pswitch_4
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    const v4, 0x7f0700fc

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_0

    .line 228
    :pswitch_5
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    const v4, 0x7f0700fd

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_0

    .line 230
    :pswitch_6
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    const v4, 0x7f0700fe

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public dataFederateCallback(Lcom/shadowlog/shadowverselog/struct/SyncStruct;)V
    .locals 11
    .param p1, "result"    # Lcom/shadowlog/shadowverselog/struct/SyncStruct;

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const v9, 0x7f07001b

    .line 376
    const-string v6, "RecordEditFragment"

    const-string v7, "dataFederateCallback"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->putError()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->putError()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 378
    :cond_0
    const-string v6, "RecordEditFragment"

    const-string v7, "dataFederateCallback - Success"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->putResult()Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;->putRecord_2pick()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 382
    .local v3, "resHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;

    invoke-direct {v4}, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;-><init>()V

    .line 383
    .local v4, "resRecord":Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;
    invoke-virtual {v4, v3}, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->setHash(Ljava/util/Map;)V

    .line 386
    new-instance v2, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;-><init>(Landroid/content/Context;)V

    .line 387
    .local v2, "rdb":Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->open()V

    .line 388
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select aid from SV_RECORD_2PICK where aid=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->aid:Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 389
    .local v1, "chk":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 390
    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->putHash2()Ljava/util/HashMap;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "aid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->aid:Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->doUpdate(Ljava/util/Map;Ljava/lang/String;)V

    .line 394
    :goto_0
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->close()V

    .line 399
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iput-boolean v10, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->commitFlag:Z

    .line 402
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "\u6226\u7e3e\u306e\u8a18\u9332\u306b\u6210\u529f\u3057\u307e\u3057\u305f!"

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 403
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    check-cast v6, Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-virtual {v6}, Lcom/shadowlog/shadowverselog/MyPageActivity;->onAllRefresh()V

    .line 404
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 415
    .end local v1    # "chk":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "rdb":Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;
    .end local v3    # "resHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "resRecord":Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;
    :goto_1
    return-void

    .line 392
    .restart local v1    # "chk":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v2    # "rdb":Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;
    .restart local v3    # "resHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "resRecord":Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;
    :cond_1
    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->putHash2()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->doInsert(Ljava/util/Map;)V

    goto :goto_0

    .line 408
    .end local v1    # "chk":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "rdb":Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;
    .end local v3    # "resHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "resRecord":Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;
    :cond_2
    const-string v6, "RecordEditFragment"

    const-string v7, "dataFederateCallback - Error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string v0, ""

    .line 410
    .local v0, "aMessage":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->putError()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "s":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 411
    .end local v5    # "s":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iput-boolean v10, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->commitFlag:Z

    goto :goto_1
.end method

.method public dataSaveOffline(Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;)V
    .locals 12
    .param p1, "rst"    # Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;

    .prologue
    const-wide/16 v10, 0x3e8

    const v9, 0x7f07001b

    const/4 v8, 0x1

    .line 422
    new-instance v2, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;-><init>(Landroid/content/Context;)V

    .line 424
    .local v2, "rdb":Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;
    iget-wide v4, p1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->play_date:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v10

    iput-wide v4, p1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->play_date:J

    .line 427
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v10

    iput-wide v4, p1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->update_date:J

    .line 429
    iget v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->id:I

    if-lez v3, :cond_1

    .line 433
    iget v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->aid:Ljava/lang/Integer;

    .line 435
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->open()V

    .line 436
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->putHash2()Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->doUpdate(Ljava/util/Map;Ljava/lang/String;)V

    .line 437
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->close()V

    .line 465
    :goto_0
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 466
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iput-boolean v8, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->commitFlag:Z

    .line 468
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u6226\u7e3e\u306e\u8a18\u9332\u306b\u6210\u529f\u3057\u307e\u3057\u305f!"

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 469
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/MyPageActivity;->onAllRefresh()V

    .line 470
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 471
    return-void

    .line 443
    :cond_1
    iget-wide v4, p1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->update_date:J

    iput-wide v4, p1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->insert_date:J

    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, "aidMax":I
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->open()V

    .line 448
    const-string v3, "select aid from SV_RECORD_2PICK where 1 order by aid desc limit 1"

    invoke-virtual {v2, v3}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 449
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->close()V

    .line 450
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 451
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "aid"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 455
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->aid:Ljava/lang/Integer;

    .line 457
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->open()V

    .line 458
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->putHash2()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->doInsert(Ljava/util/Map;)V

    .line 459
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->close()V

    goto :goto_0

    .line 453
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public deckHashCallback(Ljava/lang/String;)V
    .locals 6
    .param p1, "sst"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f0700ac

    const v4, 0x7f0700ab

    const v3, 0x7f0700aa

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 492
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 493
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->deck_url:Ljava/lang/String;

    .line 494
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 503
    :goto_0
    return-void

    .line 498
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->deck_url:Ljava/lang/String;

    .line 499
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public getDeckHash(Ljava/lang/String;)V
    .locals 3
    .param p1, "deck_code"    # Ljava/lang/String;

    .prologue
    .line 478
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 479
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 480
    new-instance v0, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;

    invoke-direct {v0, p1}, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;-><init>(Ljava/lang/String;)V

    .line 481
    .local v0, "dtd":Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;
    invoke-virtual {v0, p0}, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;->setCallbacks(Lcom/shadowlog/shadowverselog/function/DeckHashToDeck$DeckHashCallbacks;)V

    .line 482
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;->onConnect()V

    .line 485
    .end local v0    # "dtd":Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 76
    const-string v3, "Record2EditFragment"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ID"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->id:I

    .line 83
    new-instance v1, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;-><init>(Landroid/content/Context;)V

    .line 84
    .local v1, "idb":Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->open()V

    .line 85
    const-string v3, "offline"

    invoke-virtual {v1, v3}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 86
    iput-boolean v6, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->offline_mode:Z

    .line 90
    :goto_0
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->close()V

    .line 93
    new-instance v2, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;-><init>(Landroid/content/Context;)V

    .line 94
    .local v2, "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->open()V

    .line 96
    :try_start_0
    const-string v3, "User_id"

    invoke-virtual {v2, v3}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->userID:I

    .line 97
    const-string v3, "session_id"

    invoke-virtual {v2, v3}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->sessionID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_1
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->close()V

    .line 101
    iput-boolean v6, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->commitFlag:Z

    .line 102
    return-void

    .line 88
    .end local v2    # "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    :cond_0
    iput-boolean v5, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->offline_mode:Z

    goto :goto_0

    .line 98
    .restart local v2    # "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iput v5, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->userID:I

    const-string v3, ""

    iput-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->sessionID:Ljava/lang/String;

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    const-string v8, "Record2EditFragment"

    const-string v9, "onCreateView"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const v8, 0x7f090031

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    .line 113
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const v9, 0x7f0701e0

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget v8, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->id:I

    if-lez v8, :cond_0

    .line 117
    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    const v9, 0x7f070063

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v9, "2Pick\u6226\u7e3e\u3092\u65b0\u3057\u304f\u8a18\u9332\u3059\u308b"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :goto_0
    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    const v9, 0x7f0701b9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "fontawesome-webfont.ttf"

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 124
    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    const v9, 0x7f0701bd

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "fontawesome-webfont.ttf"

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 125
    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    const v9, 0x7f0701b8

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "fontawesome-webfont.ttf"

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 126
    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    const v9, 0x7f0701b6

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "fontawesome-webfont.ttf"

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 128
    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    const v9, 0x7f070054

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "fontawesome-webfont.ttf"

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 132
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->onInitFormSet()V

    .line 137
    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    const v9, 0x7f070046

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 138
    .local v4, "commit_button1":Landroid/widget/Button;
    new-instance v0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$1;

    invoke-direct {v0, p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;)V

    .line 144
    .local v0, "clickListenerCommit":Landroid/view/View$OnClickListener;
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    const v9, 0x7f070054

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 150
    .local v6, "delete_button":Landroid/widget/Button;
    iget v8, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->id:I

    if-lez v8, :cond_1

    .line 151
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    new-instance v2, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$2;

    invoke-direct {v2, p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$2;-><init>(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;)V

    .line 158
    .local v2, "clickListenerDelete":Landroid/view/View$OnClickListener;
    invoke-virtual {v6, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    .end local v2    # "clickListenerDelete":Landroid/view/View$OnClickListener;
    :goto_1
    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    const v9, 0x7f0700f4

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 167
    .local v7, "rating_reset_button":Landroid/widget/Button;
    new-instance v3, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$3;

    invoke-direct {v3, p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$3;-><init>(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;)V

    .line 173
    .local v3, "clickListenerRatingReset":Landroid/view/View$OnClickListener;
    invoke-virtual {v7, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    const v9, 0x7f07002a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 179
    .local v5, "deck_commit_button":Landroid/widget/Button;
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$4;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$4;-><init>(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;)V

    .line 188
    .local v1, "clickListenerDeckCommit":Landroid/view/View$OnClickListener;
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    return-object v8

    .line 119
    .end local v0    # "clickListenerCommit":Landroid/view/View$OnClickListener;
    .end local v1    # "clickListenerDeckCommit":Landroid/view/View$OnClickListener;
    .end local v3    # "clickListenerRatingReset":Landroid/view/View$OnClickListener;
    .end local v4    # "commit_button1":Landroid/widget/Button;
    .end local v5    # "deck_commit_button":Landroid/widget/Button;
    .end local v6    # "delete_button":Landroid/widget/Button;
    .end local v7    # "rating_reset_button":Landroid/widget/Button;
    :cond_0
    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->view:Landroid/view/View;

    const v9, 0x7f070063

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v9, "2Pick\u6226\u7e3e\u3092\u7de8\u96c6\u3059\u308b"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 160
    .restart local v0    # "clickListenerCommit":Landroid/view/View$OnClickListener;
    .restart local v4    # "commit_button1":Landroid/widget/Button;
    .restart local v6    # "delete_button":Landroid/widget/Button;
    :cond_1
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 536
    const-string v0, "Record2EditFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 538
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 529
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 531
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 532
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 519
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 520
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 514
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 515
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 509
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 510
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 524
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 525
    return-void
.end method
