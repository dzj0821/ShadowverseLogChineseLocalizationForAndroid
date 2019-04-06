.class public Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;
.super Landroid/support/v4/app/Fragment;
.source "MydeckLabelFragment.java"

# interfaces
.implements Lcom/shadowlog/shadowverselog/lib/DataFederate$DataFederateCallbacks;


# instance fields
.field private dList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;",
            ">;"
        }
    .end annotation
.end field

.field private deck_name:Ljava/lang/String;

.field private flag:Z

.field private fm:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

.field private id:I

.field private labelListAdapter:Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;

.field private offline_mode:Z

.field private sessionID:Ljava/lang/String;

.field private userID:I

.field private view:Landroid/view/View;

.field private viewpager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 46
    iput v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->id:I

    .line 51
    iput-boolean v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->flag:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->dList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    .prologue
    .line 43
    iget v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->id:I

    return v0
.end method

.method static synthetic access$100(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->dList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;)Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->labelListAdapter:Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;)Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;
    .param p1, "x1"    # Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->labelListAdapter:Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;)Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->fm:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->onLabelCommit(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->onLabelDetele(I)V

    return-void
.end method

.method private dataSaveOffline(Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;)V
    .locals 8
    .param p1, "mls"    # Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;

    .prologue
    const-wide/16 v6, 0x3e8

    .line 383
    new-instance v1, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;-><init>(Landroid/content/Context;)V

    .line 384
    .local v1, "ldb":Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v6

    iput-wide v4, p1, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->insert_date:J

    .line 386
    iget-object v3, p1, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->aid:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    .line 390
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->open()V

    .line 391
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->putHash2()Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->aid:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->doUpdate(Ljava/util/Map;Ljava/lang/String;)V

    .line 392
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->close()V

    .line 420
    :goto_0
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u30e9\u30d9\u30eb\u306e\u7de8\u96c6\u306b\u6210\u529f\u3057\u307e\u3057\u305f\u3002"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 421
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->updateListData()V

    .line 423
    return-void

    .line 398
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v6

    iput-wide v4, p1, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->give_date:J

    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, "aidMax":I
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->open()V

    .line 403
    const-string v3, "select aid from SV_MYDECK_LABEL where 1 order by aid desc limit 1"

    invoke-virtual {v1, v3}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 404
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->close()V

    .line 405
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 406
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "aid"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 410
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p1, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->aid:Ljava/lang/Integer;

    .line 412
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->open()V

    .line 413
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->putHash2()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->doInsert(Ljava/util/Map;)V

    .line 414
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->close()V

    goto :goto_0

    .line 408
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static newInstances()Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;
    .locals 2

    .prologue
    .line 61
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;-><init>()V

    .line 62
    .local v1, "fm":Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->setArguments(Landroid/os/Bundle;)V

    .line 64
    return-object v1
.end method

.method public static newInstances(I)Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;
    .locals 3
    .param p0, "num"    # I

    .prologue
    .line 67
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;-><init>()V

    .line 68
    .local v1, "fm":Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "ID"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->setArguments(Landroid/os/Bundle;)V

    .line 71
    return-object v1
.end method

.method private onLabelCommit(ILjava/lang/String;I)V
    .locals 6
    .param p1, "aid"    # I
    .param p2, "txt"    # Ljava/lang/String;
    .param p3, "del"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 293
    const-string v2, "MydeckLabelFragment"

    const-string v3, "onLabelCommit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v1, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;-><init>()V

    .line 296
    .local v1, "mls":Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;
    if-nez p3, :cond_5

    .line 298
    if-lez p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->aid:Ljava/lang/Integer;

    .line 299
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-lt v2, v3, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-gt v2, v3, :cond_4

    .line 300
    iput-object p2, v1, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->label:Ljava/lang/String;

    .line 301
    iget v2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->Deck_id:Ljava/lang/Integer;

    .line 302
    iget v2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->userID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->User_id:Ljava/lang/Integer;

    .line 304
    iget-boolean v2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->offline_mode:Z

    if-nez v2, :cond_3

    .line 306
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/DataFederate;

    iget v2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->userID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->sessionID:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/shadowlog/shadowverselog/lib/DataFederate;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 307
    .local v0, "dFederate":Lcom/shadowlog/shadowverselog/lib/DataFederate;
    invoke-virtual {v0, p0}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->setCallbacks(Lcom/shadowlog/shadowverselog/lib/DataFederate$DataFederateCallbacks;)V

    .line 308
    if-lez p1, :cond_2

    .line 309
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "up"

    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->putHash()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->onConnect(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 336
    .end local v0    # "dFederate":Lcom/shadowlog/shadowverselog/lib/DataFederate;
    :cond_1
    :goto_0
    return-void

    .line 311
    .restart local v0    # "dFederate":Lcom/shadowlog/shadowverselog/lib/DataFederate;
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "in"

    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->putHash()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->onConnect(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 315
    .end local v0    # "dFederate":Lcom/shadowlog/shadowverselog/lib/DataFederate;
    :cond_3
    invoke-direct {p0, v1}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->dataSaveOffline(Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;)V

    goto :goto_0

    .line 319
    :cond_4
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u30c7\u30c3\u30ad\u8abf\u6574\u30e1\u30e2\u306f15\u6587\u5b57\u4ee5\u4e0a\u3001100\u6587\u5b57\u4ee5\u4e0b\u3067\u5165\u529b\u3057\u3066\u4e0b\u3055\u3044\u3002"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 321
    :cond_5
    if-ne p3, v5, :cond_1

    .line 323
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->aid:Ljava/lang/Integer;

    .line 324
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->delete_flag:Ljava/lang/Integer;

    .line 325
    iget-boolean v2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->offline_mode:Z

    if-nez v2, :cond_6

    if-lez p1, :cond_6

    .line 327
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/DataFederate;

    iget v2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->userID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->sessionID:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/shadowlog/shadowverselog/lib/DataFederate;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 328
    .restart local v0    # "dFederate":Lcom/shadowlog/shadowverselog/lib/DataFederate;
    invoke-virtual {v0, p0}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->setCallbacks(Lcom/shadowlog/shadowverselog/lib/DataFederate$DataFederateCallbacks;)V

    .line 329
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "up"

    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->putHash()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->onConnect(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 332
    .end local v0    # "dFederate":Lcom/shadowlog/shadowverselog/lib/DataFederate;
    :cond_6
    invoke-direct {p0, v1}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->dataSaveOffline(Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;)V

    goto :goto_0
.end method

.method private onLabelDetele(I)V
    .locals 4
    .param p1, "aid"    # I

    .prologue
    .line 275
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 276
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const-string v1, "\u30e1\u30e2\u3092\u524a\u9664\u3057\u3066\u5b9c\u3057\u3044\u3067\u3059\u304b\uff1f"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u524a\u9664\u3059\u308b"

    new-instance v3, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$7;

    invoke-direct {v3, p0, p1}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$7;-><init>(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;I)V

    .line 277
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u30ad\u30e3\u30f3\u30bb\u30eb"

    new-instance v3, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$6;

    invoke-direct {v3, p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$6;-><init>(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;)V

    .line 282
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 285
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 286
    return-void
.end method


# virtual methods
.method public dataFederateCallback(Lcom/shadowlog/shadowverselog/struct/SyncStruct;)V
    .locals 10
    .param p1, "result"    # Lcom/shadowlog/shadowverselog/struct/SyncStruct;

    .prologue
    const/4 v9, 0x1

    .line 343
    const-string v6, "MydeckLabelFragment"

    const-string v7, "dataFederateCallback"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->putError()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->putError()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 345
    :cond_0
    const-string v6, "MydeckLabelFragment"

    const-string v7, "dataFederateCallback - Success"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->putResult()Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;->putMyDeck_Label()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 349
    .local v3, "resHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;

    invoke-direct {v4}, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;-><init>()V

    .line 350
    .local v4, "resMydeckLabel":Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;
    invoke-virtual {v4, v3}, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->setHash(Ljava/util/Map;)V

    .line 353
    new-instance v2, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;-><init>(Landroid/content/Context;)V

    .line 354
    .local v2, "rdb":Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->open()V

    .line 355
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select aid from SV_MYDECK_LABEL where aid=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->aid:Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 356
    .local v1, "chk":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 357
    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->putHash2()Ljava/util/HashMap;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "aid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->aid:Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->doUpdate(Ljava/util/Map;Ljava/lang/String;)V

    .line 361
    :goto_0
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->close()V

    .line 366
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "\u30e9\u30d9\u30eb\u306e\u7de8\u96c6\u306b\u6210\u529f\u3057\u307e\u3057\u305f\u3002"

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 367
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->updateListData()V

    .line 376
    .end local v1    # "chk":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "rdb":Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;
    .end local v3    # "resHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "resMydeckLabel":Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;
    :goto_1
    return-void

    .line 359
    .restart local v1    # "chk":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v2    # "rdb":Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;
    .restart local v3    # "resHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "resMydeckLabel":Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;
    :cond_1
    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->putHash2()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->doInsert(Ljava/util/Map;)V

    goto :goto_0

    .line 371
    .end local v1    # "chk":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "rdb":Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;
    .end local v3    # "resHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "resMydeckLabel":Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;
    :cond_2
    const-string v6, "MydeckLabelFragment"

    const-string v7, "dataFederateCallback - Error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v0, ""

    .line 373
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

    .line 374
    .end local v5    # "s":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 437
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 438
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->viewpager:Landroid/support/v4/view/ViewPager;

    .line 439
    return-void
.end method

.method public onClickButtonCallback(II)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "arg"    # I

    .prologue
    const/4 v6, 0x3

    .line 208
    const-string v3, "MydeckLabelFragment"

    const-string v4, "onClickButtonCallback"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 211
    .local v1, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 212
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    packed-switch p1, :pswitch_data_0

    .line 225
    :goto_0
    return-void

    .line 215
    :pswitch_0
    new-instance v0, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;

    invoke-direct {v0, v1}, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 216
    .local v0, "adapter":Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->viewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3, v6}, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;->findFragmentByPosition(Landroid/support/v4/view/ViewPager;I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    iget v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->id:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->onRedirectLoad(III)V

    .line 217
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->viewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 218
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 222
    .end local v0    # "adapter":Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->onEditLabel(I)V

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 79
    const-string v5, "MydeckLabelFragment"

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    iput-object p0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->fm:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    .line 84
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "ID"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->id:I

    .line 87
    iget v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->id:I

    if-nez v5, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->onDestroy()V

    .line 92
    :cond_0
    new-instance v2, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;-><init>(Landroid/content/Context;)V

    .line 93
    .local v2, "mdb":Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->open()V

    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select * from SV_MYDECK where delete_flag=0 and aid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 95
    .local v3, "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->close()V

    .line 96
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "name"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 97
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "name"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->deck_name:Ljava/lang/String;

    .line 101
    :goto_0
    const/4 v3, 0x0

    .line 104
    new-instance v1, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;-><init>(Landroid/content/Context;)V

    .line 105
    .local v1, "idb":Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->open()V

    .line 106
    const-string v5, "offline"

    invoke-virtual {v1, v5}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 107
    iput-boolean v8, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->offline_mode:Z

    .line 111
    :goto_1
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->close()V

    .line 114
    new-instance v4, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;-><init>(Landroid/content/Context;)V

    .line 115
    .local v4, "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->open()V

    .line 117
    :try_start_0
    const-string v5, "User_id"

    invoke-virtual {v4, v5}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->userID:I

    .line 118
    const-string v5, "session_id"

    invoke-virtual {v4, v5}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->sessionID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_2
    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->close()V

    .line 121
    return-void

    .line 99
    .end local v1    # "idb":Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
    .end local v4    # "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    :cond_1
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->onDestroy()V

    goto :goto_0

    .line 109
    .restart local v1    # "idb":Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
    :cond_2
    iput-boolean v7, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->offline_mode:Z

    goto :goto_1

    .line 119
    .restart local v4    # "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iput v7, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->userID:I

    const-string v5, ""

    iput-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->sessionID:Ljava/lang/String;

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f070017

    .line 128
    const-string v0, "MydeckLabelFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const v0, 0x7f09003d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->view:Landroid/view/View;

    .line 132
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-boolean v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->flag:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->updateListData()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->flag:Z

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->deck_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->view:Landroid/view/View;

    const v1, 0x7f070063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u3010\u30c7\u30c3\u30ad\u3011"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->deck_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fontawesome-webfont.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 141
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$1;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 470
    const-string v0, "MydeckLabelFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 472
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 463
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 465
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 466
    return-void
.end method

.method public onEditLabel(I)V
    .locals 6
    .param p1, "aid"    # I

    .prologue
    .line 233
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 235
    .local v1, "dialogTextView":Landroid/widget/EditText;
    if-lez p1, :cond_1

    .line 236
    new-instance v2, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;-><init>(Landroid/content/Context;)V

    .line 237
    .local v2, "ldb":Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->open()V

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select label from SV_MYDECK_LABEL where delete_flag=0 and aid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " limit 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 239
    .local v3, "ltmp":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->close()V

    .line 240
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "label"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 245
    .end local v2    # "ldb":Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;
    .end local v3    # "ltmp":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 246
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog$Builder;
    const-string v4, "\u30c7\u30c3\u30ad\u8abf\u6574\u30e9\u30d9\u30eb\u306e\u5165\u529b\u30fb\u7de8\u96c6"

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 247
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 250
    const-string v4, "\u5165\u529b"

    new-instance v5, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$3;

    invoke-direct {v5, p0, p1, v1}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$3;-><init>(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;ILandroid/widget/EditText;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 257
    if-lez p1, :cond_0

    .line 258
    const-string v4, "\u524a\u9664"

    new-instance v5, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$4;

    invoke-direct {v5, p0, p1}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$4;-><init>(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;I)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 265
    :cond_0
    const-string v4, "\u30ad\u30e3\u30f3\u30bb\u30eb"

    new-instance v5, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$5;

    invoke-direct {v5, p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$5;-><init>(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 268
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 269
    return-void

    .line 242
    .end local v0    # "dialog":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_1
    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 453
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 454
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 448
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 449
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 443
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 444
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 458
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 459
    return-void
.end method

.method public updateListData()V
    .locals 3

    .prologue
    .line 154
    const-string v1, "MydeckLabelFragment"

    const-string v2, "updateListData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->view:Landroid/view/View;

    const v2, 0x7f07009a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 156
    .local v0, "listview":Landroid/widget/ListView;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;-><init>(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;Landroid/widget/ListView;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 200
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 201
    return-void
.end method
