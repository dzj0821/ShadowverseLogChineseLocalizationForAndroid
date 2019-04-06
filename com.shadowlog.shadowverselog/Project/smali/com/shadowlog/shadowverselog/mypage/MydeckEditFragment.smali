.class public Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;
.super Landroid/support/v4/app/Fragment;
.source "MydeckEditFragment.java"

# interfaces
.implements Lcom/shadowlog/shadowverselog/lib/DataFederate$DataFederateCallbacks;
.implements Lcom/shadowlog/shadowverselog/function/DeckHashToDeck$DeckHashCallbacks;


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

.field private deckTypeList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deck_url:Ljava/lang/String;

.field private id:I

.field private myDeckType:Ljava/lang/Integer;

.field private myLeader:Ljava/lang/Integer;

.field private offline_mode:Z

.field private sessionID:Ljava/lang/String;

.field private userID:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 52
    iput v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->id:I

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->deck_url:Ljava/lang/String;

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->myLeader:Ljava/lang/Integer;

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->myDeckType:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$000(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;ILandroid/widget/Spinner;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/widget/Spinner;
    .param p3, "x3"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->onChangeDeckAdapter(ILandroid/widget/Spinner;I)V

    return-void
.end method

.method static synthetic access$202(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->commitFlag:Z

    return p1
.end method

.method static synthetic access$300(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->id:I

    return v0
.end method

.method static synthetic access$400(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->userID:I

    return v0
.end method

.method static synthetic access$500(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->offline_mode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstances()Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;
    .locals 2

    .prologue
    .line 68
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;-><init>()V

    .line 69
    .local v1, "fm":Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->setArguments(Landroid/os/Bundle;)V

    .line 71
    return-object v1
.end method

.method public static newInstances(I)Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;
    .locals 3
    .param p0, "num"    # I

    .prologue
    .line 74
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;-><init>()V

    .line 75
    .local v1, "fm":Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "ID"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    return-object v1
.end method

.method private onChangeDeckAdapter(ILandroid/widget/Spinner;I)V
    .locals 6
    .param p1, "leader"    # I
    .param p2, "view"    # Landroid/widget/Spinner;
    .param p3, "defDeck"    # I

    .prologue
    .line 271
    const/16 v4, 0x9

    if-ge p1, v4, :cond_3

    if-lez p1, :cond_3

    .line 272
    const/4 v3, -0x1

    .local v3, "pos":I
    const/4 v1, 0x0

    .line 273
    .local v1, "i":I
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090060

    invoke-direct {v0, v4, v5}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 274
    .local v0, "adapter":Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;
    const v4, 0x7f090061

    invoke-virtual {v0, v4}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->setDropDownViewResource(I)V

    .line 275
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->bsDeck:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 276
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->bsDeck:Ljava/util/Map;

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

    .line 277
    .local v2, "map":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v0, v2}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->add(Ljava/lang/Object;)V

    .line 278
    if-gez v3, :cond_0

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p3, v4, :cond_0

    move v3, v1

    .line 279
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 280
    goto :goto_0

    .line 282
    .end local v2    # "map":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 283
    if-gez v3, :cond_2

    const/4 v3, 0x0

    .line 284
    :cond_2
    invoke-virtual {p2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 286
    .end local v0    # "adapter":Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;
    .end local v1    # "i":I
    .end local v3    # "pos":I
    :cond_3
    return-void
.end method

.method private onDeckListSet()V
    .locals 11

    .prologue
    .line 250
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->bsDeck:Ljava/util/Map;

    .line 251
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->deckTypeList:Ljava/util/Map;

    .line 253
    new-instance v0, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;-><init>(Landroid/content/Context;)V

    .line 254
    .local v0, "dtdb":Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->open()V

    .line 255
    sget-object v5, Lcom/shadowlog/shadowverselog/lib/Defines;->leader:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 256
    .local v1, "e":Ljava/util/Map$Entry;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select * from SV_DECKTYPE where leader="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " order by _id asc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 257
    .local v3, "selAry":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 258
    .local v4, "x":I
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->bsDeck:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 260
    .local v2, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->bsDeck:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v9, Landroid/util/Pair;

    const-string v6, "did"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v10, "name"

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v9, v6, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->deckTypeList:Ljava/util/Map;

    const-string v5, "did"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v9, "name"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 264
    .end local v1    # "e":Ljava/util/Map$Entry;
    .end local v2    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "selAry":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "x":I
    :cond_1
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->close()V

    .line 265
    return-void
.end method


# virtual methods
.method public dataFederateCallback(Lcom/shadowlog/shadowverselog/struct/SyncStruct;)V
    .locals 11
    .param p1, "result"    # Lcom/shadowlog/shadowverselog/struct/SyncStruct;

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const v9, 0x7f07001b

    .line 500
    const-string v6, "MydeckEditFragment"

    const-string v7, "dataFederateCallback"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->putError()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->putError()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 502
    :cond_0
    const-string v6, "MydeckEditFragment"

    const-string v7, "dataFederateCallback - Success"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->putResult()Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;->putMyDeck()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 506
    .local v3, "resHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;

    invoke-direct {v4}, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;-><init>()V

    .line 507
    .local v4, "resMydeck":Lcom/shadowlog/shadowverselog/struct/MydeckStruct;
    invoke-virtual {v4, v3}, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->setHash(Ljava/util/Map;)V

    .line 510
    new-instance v2, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;-><init>(Landroid/content/Context;)V

    .line 511
    .local v2, "rdb":Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->open()V

    .line 512
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select aid from SV_MYDECK where aid=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->aid:Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 513
    .local v1, "chk":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 514
    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->putHash2()Ljava/util/HashMap;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "aid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->aid:Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->doUpdate(Ljava/util/Map;Ljava/lang/String;)V

    .line 518
    :goto_0
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->close()V

    .line 523
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 524
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iput-boolean v10, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->commitFlag:Z

    .line 526
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "\u30de\u30a4\u30c7\u30c3\u30ad\u306e\u767b\u9332\u306b\u6210\u529f\u3057\u307e\u3057\u305f!"

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 527
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    check-cast v6, Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-virtual {v6}, Lcom/shadowlog/shadowverselog/MyPageActivity;->onAllRefresh()V

    .line 528
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 539
    .end local v1    # "chk":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "rdb":Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;
    .end local v3    # "resHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "resMydeck":Lcom/shadowlog/shadowverselog/struct/MydeckStruct;
    :goto_1
    return-void

    .line 516
    .restart local v1    # "chk":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v2    # "rdb":Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;
    .restart local v3    # "resHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "resMydeck":Lcom/shadowlog/shadowverselog/struct/MydeckStruct;
    :cond_1
    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->putHash2()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->doInsert(Ljava/util/Map;)V

    goto :goto_0

    .line 532
    .end local v1    # "chk":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "rdb":Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;
    .end local v3    # "resHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "resMydeck":Lcom/shadowlog/shadowverselog/struct/MydeckStruct;
    :cond_2
    const-string v6, "MydeckEditFragment"

    const-string v7, "dataFederateCallback - Error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const-string v0, ""

    .line 534
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

    .line 535
    .end local v5    # "s":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iput-boolean v10, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->commitFlag:Z

    goto :goto_1
.end method

.method public dataRemove()V
    .locals 3

    .prologue
    .line 469
    const-string v0, "MydeckEditFragment"

    const-string v1, "dataRemove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->id:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->commitFlag:Z

    if-eqz v0, :cond_0

    .line 472
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u3053\u306e\u30de\u30a4\u30c7\u30c3\u30ad\u3092\u524a\u9664\u3057\u3066\u3088\u308d\u3057\u3044\u3067\u3059\u304b\uff1f"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u306f\u3044"

    new-instance v2, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$7;

    invoke-direct {v2, p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$7;-><init>(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;)V

    .line 473
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u3044\u3044\u3048"

    new-instance v2, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$6;

    invoke-direct {v2, p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$6;-><init>(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;)V

    .line 490
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 494
    :cond_0
    return-void
.end method

.method public dataSaveOffline(Lcom/shadowlog/shadowverselog/struct/MydeckStruct;)V
    .locals 10
    .param p1, "mst"    # Lcom/shadowlog/shadowverselog/struct/MydeckStruct;

    .prologue
    const v9, 0x7f07001b

    const/4 v8, 0x1

    .line 546
    new-instance v2, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;-><init>(Landroid/content/Context;)V

    .line 548
    .local v2, "mdb":Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, p1, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->update_date:J

    .line 550
    iget v3, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->id:I

    if-lez v3, :cond_0

    .line 554
    iget v3, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p1, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->aid:Ljava/lang/Integer;

    .line 556
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->open()V

    .line 557
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->putHash2()Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->doUpdate(Ljava/util/Map;Ljava/lang/String;)V

    .line 558
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->close()V

    .line 586
    :goto_0
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 587
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    iput-boolean v8, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->commitFlag:Z

    .line 589
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u30de\u30a4\u30c7\u30c3\u30ad\u306e\u767b\u9332\u306b\u6210\u529f\u3057\u307e\u3057\u305f!"

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 590
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/MyPageActivity;->onAllRefresh()V

    .line 591
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 592
    return-void

    .line 564
    :cond_0
    iget-wide v4, p1, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->update_date:J

    iput-wide v4, p1, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->insert_date:J

    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "aidMax":I
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->open()V

    .line 569
    const-string v3, "select aid from SV_MYDECK where 1 order by aid desc limit 1"

    invoke-virtual {v2, v3}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 570
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->close()V

    .line 571
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 572
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

    .line 576
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p1, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->aid:Ljava/lang/Integer;

    .line 578
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->open()V

    .line 579
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->putHash2()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->doInsert(Ljava/util/Map;)V

    .line 580
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->close()V

    goto :goto_0

    .line 574
    :cond_1
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

    .line 614
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 615
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->deck_url:Ljava/lang/String;

    .line 616
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 618
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 625
    :goto_0
    return-void

    .line 620
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->deck_url:Ljava/lang/String;

    .line 621
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 623
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public getDeckHash(Ljava/lang/String;)V
    .locals 3
    .param p1, "deck_code"    # Ljava/lang/String;

    .prologue
    .line 600
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 601
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 602
    new-instance v0, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;

    invoke-direct {v0, p1}, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;-><init>(Ljava/lang/String;)V

    .line 603
    .local v0, "dtd":Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;
    invoke-virtual {v0, p0}, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;->setCallbacks(Lcom/shadowlog/shadowverselog/function/DeckHashToDeck$DeckHashCallbacks;)V

    .line 604
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;->onConnect()V

    .line 607
    .end local v0    # "dtd":Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;
    :cond_0
    return-void
.end method

.method public onCommit()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const v9, 0x7f07001b

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 356
    const-string v5, "RecordEditFragment"

    const-string v6, "onCommit"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-boolean v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->commitFlag:Z

    if-eqz v5, :cond_4

    .line 358
    iput-boolean v7, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->commitFlag:Z

    .line 359
    new-instance v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;

    invoke-direct {v4}, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;-><init>()V

    .line 362
    .local v4, "resMst":Lcom/shadowlog/shadowverselog/struct/MydeckStruct;
    iget v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->id:I

    if-lez v5, :cond_0

    .line 363
    iget v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->aid:Ljava/lang/Integer;

    .line 367
    :cond_0
    iget v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->userID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->User_id:Ljava/lang/Integer;

    .line 370
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v6, 0x7f070061

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 371
    .local v3, "name":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->name:Ljava/lang/String;

    .line 374
    iget v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->id:I

    if-nez v5, :cond_5

    .line 375
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v6, 0x7f0700ef

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 406
    :goto_0
    iget v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->id:I

    if-nez v5, :cond_6

    .line 407
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v6, 0x7f0701a8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 408
    .local v2, "myDeckSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 409
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    iput-object v5, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->myDeckType:Ljava/lang/Integer;

    .line 416
    .end local v2    # "myDeckSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->deck_url:Ljava/lang/String;

    iput-object v5, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->deck_url:Ljava/lang/String;

    .line 419
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v6, 0x7f0700f1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 429
    :goto_2
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v6, 0x7f07005f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 430
    .local v1, "memo":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->memo:Ljava/lang/String;

    .line 435
    iget-object v5, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v11, :cond_3

    iget v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->id:I

    if-nez v5, :cond_2

    iget-object v5, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->myLeader:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->myDeckType:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-boolean v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->offline_mode:Z

    if-nez v5, :cond_7

    iget-object v5, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->User_id:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_7

    .line 437
    :cond_3
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "\u5165\u529b\u306b\u5fc5\u8981\u306a\u9805\u76ee\u304c\u9078\u629e\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iput-boolean v8, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->commitFlag:Z

    .line 461
    .end local v1    # "memo":Landroid/widget/TextView;
    .end local v3    # "name":Landroid/widget/TextView;
    .end local v4    # "resMst":Lcom/shadowlog/shadowverselog/struct/MydeckStruct;
    :cond_4
    :goto_3
    return-void

    .line 377
    .restart local v3    # "name":Landroid/widget/TextView;
    .restart local v4    # "resMst":Lcom/shadowlog/shadowverselog/struct/MydeckStruct;
    :pswitch_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 380
    :pswitch_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 383
    :pswitch_2
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 386
    :pswitch_3
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 389
    :pswitch_4
    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 392
    :pswitch_5
    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 395
    :pswitch_6
    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 398
    :pswitch_7
    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 402
    :cond_5
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->myLeader:Ljava/lang/Integer;

    iput-object v5, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 412
    :cond_6
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->myDeckType:Ljava/lang/Integer;

    iput-object v5, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->myDeckType:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 421
    :pswitch_8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->pub_flag:Ljava/lang/Integer;

    goto/16 :goto_2

    .line 424
    :pswitch_9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->pub_flag:Ljava/lang/Integer;

    goto/16 :goto_2

    .line 440
    .restart local v1    # "memo":Landroid/widget/TextView;
    :cond_7
    iget-object v5, v4, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->memo:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xc8

    if-le v5, v6, :cond_8

    .line 441
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 442
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "\u30e1\u30e2\u306f\u6700\u5927200\u6587\u5b57\u307e\u3067\u3067\u3059\u3002"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iput-boolean v8, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->commitFlag:Z

    goto/16 :goto_3

    .line 446
    :cond_8
    iget-boolean v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->offline_mode:Z

    if-nez v5, :cond_a

    .line 448
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/DataFederate;

    iget v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->userID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->sessionID:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Lcom/shadowlog/shadowverselog/lib/DataFederate;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 449
    .local v0, "dFederate":Lcom/shadowlog/shadowverselog/lib/DataFederate;
    invoke-virtual {v0, p0}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->setCallbacks(Lcom/shadowlog/shadowverselog/lib/DataFederate$DataFederateCallbacks;)V

    .line 450
    iget v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->id:I

    if-lez v5, :cond_9

    .line 451
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "up"

    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->putHash()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->onConnect(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 453
    :cond_9
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "in"

    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->putHash()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->onConnect(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 457
    .end local v0    # "dFederate":Lcom/shadowlog/shadowverselog/lib/DataFederate;
    :cond_a
    invoke-virtual {p0, v4}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->dataSaveOffline(Lcom/shadowlog/shadowverselog/struct/MydeckStruct;)V

    goto/16 :goto_3

    .line 375
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

    .line 419
    :pswitch_data_1
    .packed-switch 0x7f0700ec
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 86
    const-string v3, "MydeckEditFragment"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ID"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->id:I

    .line 93
    new-instance v1, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;-><init>(Landroid/content/Context;)V

    .line 94
    .local v1, "idb":Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->open()V

    .line 95
    const-string v3, "offline"

    invoke-virtual {v1, v3}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 96
    iput-boolean v6, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->offline_mode:Z

    .line 100
    :goto_0
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->close()V

    .line 103
    new-instance v2, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;-><init>(Landroid/content/Context;)V

    .line 104
    .local v2, "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->open()V

    .line 106
    :try_start_0
    const-string v3, "User_id"

    invoke-virtual {v2, v3}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->userID:I

    .line 107
    const-string v3, "session_id"

    invoke-virtual {v2, v3}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->sessionID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_1
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->close()V

    .line 111
    iput-boolean v6, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->commitFlag:Z

    .line 114
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->onDeckListSet()V

    .line 115
    return-void

    .line 98
    .end local v2    # "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    :cond_0
    iput-boolean v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->offline_mode:Z

    goto :goto_0

    .line 108
    .restart local v2    # "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iput v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->userID:I

    const-string v3, ""

    iput-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->sessionID:Ljava/lang/String;

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f070063

    const v10, 0x7f070054

    const v9, 0x7f0700b3

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 122
    const-string v4, "MydeckEditFragment"

    const-string v5, "onCreateView"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const v4, 0x7f09003c

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    .line 126
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0701e0

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->id:I

    if-lez v4, :cond_0

    .line 130
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "\u30de\u30a4\u30c7\u30c3\u30ad\u3092\u65b0\u3057\u304f\u8ffd\u52a0\u3059\u308b"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :goto_0
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v5, 0x7f0701ba

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "fontawesome-webfont.ttf"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 137
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v5, 0x7f0701b9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "fontawesome-webfont.ttf"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 138
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v5, 0x7f0701b6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "fontawesome-webfont.ttf"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 139
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v5, 0x7f0701b8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "fontawesome-webfont.ttf"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 140
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "fontawesome-webfont.ttf"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 141
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v5, 0x7f0701bc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "fontawesome-webfont.ttf"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 144
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->onInitFormSet()V

    .line 147
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->setLeaderChangeEvent()V

    .line 152
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v5, 0x7f070046

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 153
    .local v2, "commit_button1":Landroid/widget/Button;
    new-instance v0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$1;

    invoke-direct {v0, p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;)V

    .line 159
    .local v0, "clickListenerCommit":Landroid/view/View$OnClickListener;
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 165
    .local v3, "delete_button":Landroid/widget/Button;
    iget v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->id:I

    if-lez v4, :cond_1

    .line 166
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 167
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$2;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$2;-><init>(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;)V

    .line 173
    .local v1, "clickListenerDelete":Landroid/view/View$OnClickListener;
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    .end local v1    # "clickListenerDelete":Landroid/view/View$OnClickListener;
    :goto_1
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v5, 0x7f07002b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    new-instance v5, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$3;

    invoke-direct {v5, p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$3;-><init>(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-boolean v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->offline_mode:Z

    if-nez v4, :cond_2

    .line 195
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    new-instance v5, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$4;

    invoke-direct {v5, p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$4;-><init>(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    :goto_2
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    return-object v4

    .line 132
    .end local v0    # "clickListenerCommit":Landroid/view/View$OnClickListener;
    .end local v2    # "commit_button1":Landroid/widget/Button;
    .end local v3    # "delete_button":Landroid/widget/Button;
    :cond_0
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "\u30de\u30a4\u30c7\u30c3\u30ad\u3092\u7de8\u96c6\u3059\u308b"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 175
    .restart local v0    # "clickListenerCommit":Landroid/view/View$OnClickListener;
    .restart local v2    # "commit_button1":Landroid/widget/Button;
    .restart local v3    # "delete_button":Landroid/widget/Button;
    :cond_1
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 207
    :cond_2
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 656
    const-string v0, "MydeckEditFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 659
    iput-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->bsDeck:Ljava/util/Map;

    .line 660
    iput-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->deckTypeList:Ljava/util/Map;

    .line 661
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 649
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 651
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 652
    return-void
.end method

.method public onInitFormSet()V
    .locals 11

    .prologue
    const v5, 0x7f0700d3

    const v10, 0x7f0700b1

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 291
    iget-boolean v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->offline_mode:Z

    if-nez v4, :cond_a

    .line 292
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 297
    :goto_0
    iget v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->id:I

    if-lez v4, :cond_9

    .line 299
    new-instance v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;

    invoke-direct {v2}, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;-><init>()V

    .line 302
    .local v2, "def":Lcom/shadowlog/shadowverselog/struct/MydeckStruct;
    new-instance v3, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;-><init>(Landroid/content/Context;)V

    .line 303
    .local v3, "rdb":Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;
    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->open()V

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select * from SV_MYDECK where aid=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 305
    .local v0, "chk":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->close()V

    .line 306
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 307
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "name"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "name"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->name:Ljava/lang/String;

    .line 308
    :cond_0
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "myLeader"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "myLeader"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->myLeader:Ljava/lang/Integer;

    .line 309
    :cond_1
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "myDeckType"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "myDeckType"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->myDeckType:Ljava/lang/Integer;

    .line 310
    :cond_2
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "deck_url"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "deck_url"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->deck_url:Ljava/lang/String;

    .line 311
    :cond_3
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "pub_flag"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "pub_flag"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->pub_flag:Ljava/lang/Integer;

    .line 312
    :cond_4
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "memo"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "memo"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->memo:Ljava/lang/String;

    .line 316
    :cond_5
    iget-object v4, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 317
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v5, 0x7f070061

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iget-object v5, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_6
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v5, 0x7f0700ef

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v5, 0x7f0701a8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object v4, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->myLeader:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_7

    iget-object v4, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->myDeckType:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_7

    .line 326
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/shadowlog/shadowverselog/lib/Defines;->leader:Ljava/util/HashMap;

    iget-object v6, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->myLeader:Ljava/lang/Integer;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->deckTypeList:Ljava/util/Map;

    iget-object v6, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->myDeckType:Ljava/lang/Integer;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "deckText":Ljava/lang/String;
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 329
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v5, 0x7f0700b2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object v4, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->myLeader:Ljava/lang/Integer;

    iput-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->myLeader:Ljava/lang/Integer;

    .line 331
    iget-object v4, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->myDeckType:Ljava/lang/Integer;

    iput-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->myDeckType:Ljava/lang/Integer;

    .line 335
    .end local v1    # "deckText":Ljava/lang/String;
    :cond_7
    iget-object v4, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->deck_url:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    .line 336
    iget-object v4, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->deck_url:Ljava/lang/String;

    iput-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->deck_url:Ljava/lang/String;

    .line 337
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v5, 0x7f0700aa

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v5, 0x7f0700ac

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 339
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v5, 0x7f0700ab

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 343
    :cond_8
    iget-object v4, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->pub_flag:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v9, :cond_b

    .line 344
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v5, 0x7f0700ec

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    invoke-virtual {v4, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 345
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v5, 0x7f0700ed

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    invoke-virtual {v4, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 351
    .end local v0    # "chk":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "def":Lcom/shadowlog/shadowverselog/struct/MydeckStruct;
    .end local v3    # "rdb":Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;
    :cond_9
    :goto_1
    return-void

    .line 294
    :cond_a
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 347
    .restart local v0    # "chk":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v2    # "def":Lcom/shadowlog/shadowverselog/struct/MydeckStruct;
    .restart local v3    # "rdb":Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;
    :cond_b
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v5, 0x7f0700ec

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    invoke-virtual {v4, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 348
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v5, 0x7f0700ed

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    invoke-virtual {v4, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 639
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 640
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 634
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 635
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 629
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 630
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 644
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 645
    return-void
.end method

.method public setLeaderChangeEvent()V
    .locals 2

    .prologue
    .line 215
    const-string v0, "MydeckEditFragment"

    const-string v1, "onInitWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->view:Landroid/view/View;

    const v1, 0x7f0700ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$5;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$5;-><init>(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 243
    return-void
.end method
