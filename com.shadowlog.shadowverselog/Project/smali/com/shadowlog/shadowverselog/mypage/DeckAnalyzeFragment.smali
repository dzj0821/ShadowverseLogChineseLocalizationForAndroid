.class public Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;
.super Landroid/support/v4/app/Fragment;
.source "DeckAnalyzeFragment.java"


# instance fields
.field private dList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private deckAdapter:Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;

.field private flag:Z

.field private fm:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

.field private formatSet:Ljava/util/ArrayList;

.field private labelData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private labelPosition:Ljava/lang/Integer;

.field private label_adapter:Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;

.field private offline_mode:Z

.field private pos:I

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

.field private showDeck:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 70
    iput-boolean v1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->flag:Z

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->dList:Ljava/util/List;

    .line 75
    iput v1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->pos:I

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->labelPosition:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->labelPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->offline_mode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->labelPosition:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->onClickPublicButton(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->convertDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->dList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->deckAdapter:Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;)Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;
    .param p1, "x1"    # Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->deckAdapter:Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->fm:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->label_adapter:Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->showDeck:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->labelData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->prieodSet:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->formatSet:Ljava/util/ArrayList;

    return-object v0
.end method

.method private convertDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 435
    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 436
    const-string v0, ""

    .line 437
    .local v0, "res":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 439
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 444
    .end local v0    # "res":Ljava/lang/String;
    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 440
    .restart local v0    # "res":Ljava/lang/String;
    .restart local v1    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static newInstances()Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;
    .locals 2

    .prologue
    .line 86
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;-><init>()V

    .line 87
    .local v1, "fm":Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 89
    return-object v1
.end method

.method private onClickPublicButton(I)V
    .locals 8
    .param p1, "aid"    # I

    .prologue
    const/4 v6, 0x0

    .line 586
    const-string v4, "DeckAnalyzeFragment"

    const-string v5, "onClickPublicButton"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v1, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;-><init>(Landroid/content/Context;)V

    .line 589
    .local v1, "mdb":Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->open()V

    .line 590
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select name,pub_flag from SV_MYDECK where delete_flag=0 and aid="

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

    invoke-virtual {v1, v4}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 591
    .local v3, "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->close()V

    .line 593
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 594
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "pub_flag"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 595
    .local v2, "pub_flag":I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 598
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 599
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.TEXT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u3010\u30b7\u30e3\u30c9\u30a6\u30d0\u30fc\u30b9\u3011\u300e"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v7, "name"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\u300f\u306e\u30c7\u30c3\u30ad\u89e3\u6790\u30fb\u6226\u7e3e | https://shadowlog.com/deck/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " #\u30b7\u30e3\u30c9\u30a6\u30d0\u30fc\u30b9 #\u30b7\u30e3\u30c9\u30ed\u30b0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    const-string v4, "text/plain"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    invoke-virtual {p0, v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 623
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "pub_flag":I
    :cond_0
    :goto_0
    return-void

    .line 606
    .restart local v2    # "pub_flag":I
    :cond_1
    :try_start_1
    new-instance v4, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "\u3053\u306e\u30c7\u30c3\u30ad\u306f\u516c\u958b\u8a2d\u5b9a\u304c\u7121\u52b9\u3067\u3059\u3002\n\u516c\u958b\u8a2d\u5b9a\u3092\u6709\u52b9\u306b\u3057\u3066\u4e0b\u3055\u3044\u3002"

    .line 607
    invoke-virtual {v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "OK"

    new-instance v6, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$6;

    invoke-direct {v6, p0, p1}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$6;-><init>(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;I)V

    .line 608
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "Cancel"

    const/4 v6, 0x0

    .line 618
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 619
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 620
    :catch_0
    move-exception v4

    goto :goto_0

    .line 602
    :catch_1
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public makeTableLayout(Ljava/util/List;Z)Landroid/widget/TableLayout;
    .locals 16
    .param p2, "thumbFlaf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;",
            ">;>;Z)",
            "Landroid/widget/TableLayout;"
        }
    .end annotation

    .prologue
    .line 456
    .local p1, "mList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;>;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 457
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v13, 0x7f090063

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 459
    .local v0, "TableLay":Landroid/widget/TableLayout;
    const/4 v4, 0x0

    .line 460
    .local v4, "i":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 462
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;>;"
    const v13, 0x7f090066

    const/4 v15, 0x0

    invoke-virtual {v5, v13, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TableRow;

    .line 464
    .local v10, "tableRow":Landroid/widget/TableRow;
    const v13, 0x7f070185

    invoke-virtual {v10, v13}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 465
    .local v6, "name":Landroid/widget/TextView;
    const v13, 0x7f070184

    invoke-virtual {v10, v13}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 466
    .local v7, "namelayout":Landroid/widget/LinearLayout;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v13, v13, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->RowLabel:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    if-eqz p2, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v13, v13, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->Leader:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lez v13, :cond_0

    .line 470
    const v13, 0x7f07017f

    invoke-virtual {v10, v13}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 471
    .local v11, "thumb":Landroid/widget/ImageView;
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    sget-object v15, Lcom/shadowlog/shadowverselog/lib/Defines;->thumbResource:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v13, v13, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->Leader:Ljava/lang/Integer;

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 475
    .end local v11    # "thumb":Landroid/widget/ImageView;
    :cond_0
    const v13, 0x7f070186

    invoke-virtual {v10, v13}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 476
    .local v3, "enc":Landroid/widget/TextView;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v13, v13, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->per:Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "%"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    const v13, 0x7f070187

    invoke-virtual {v10, v13}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 479
    .local v9, "sum":Landroid/widget/TextView;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v13, v13, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    const v13, 0x7f070188

    invoke-virtual {v10, v13}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 482
    .local v12, "win":Landroid/widget/TextView;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v13, v13, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    const v13, 0x7f070189

    invoke-virtual {v10, v13}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 485
    .local v8, "per":Landroid/widget/TextView;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v13, v13, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_per:Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "%"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    add-int/lit8 v13, v4, 0x1

    rem-int/lit8 v13, v13, 0x2

    if-nez v13, :cond_1

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f040021

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 490
    .local v1, "color":I
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 491
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 492
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 493
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 494
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 497
    .end local v1    # "color":I
    :cond_1
    new-instance v13, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v13}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    invoke-virtual {v0, v10, v13}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    add-int/lit8 v4, v4, 0x1

    .line 499
    goto/16 :goto_0

    .line 500
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;>;"
    .end local v3    # "enc":Landroid/widget/TextView;
    .end local v6    # "name":Landroid/widget/TextView;
    .end local v7    # "namelayout":Landroid/widget/LinearLayout;
    .end local v8    # "per":Landroid/widget/TextView;
    .end local v9    # "sum":Landroid/widget/TextView;
    .end local v10    # "tableRow":Landroid/widget/TableRow;
    .end local v12    # "win":Landroid/widget/TextView;
    :cond_2
    return-object v0
.end method

.method public makeTableLayout2(Ljava/util/HashMap;)Landroid/widget/TableLayout;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/widget/TableLayout;"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const v11, 0x7f070189

    const v10, 0x7f070188

    const v9, 0x7f070187

    const v8, 0x7f070185

    const v7, 0x7f040021

    .line 508
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 509
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f090064

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 511
    .local v0, "TableLay":Landroid/widget/TableLayout;
    const v4, 0x7f090067

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    .line 512
    .local v2, "tableRow1":Landroid/widget/TableRow;
    invoke-virtual {v2, v8}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0c005a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 513
    invoke-virtual {v2, v9}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "ord1_sum"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    invoke-virtual {v2, v10}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "ord1_win"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    invoke-virtual {v2, v11}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ord1_per"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    new-instance v4, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v4}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    invoke-virtual {v0, v2, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    const v4, 0x7f090067

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableRow;

    .line 519
    .local v3, "tableRow2":Landroid/widget/TableRow;
    invoke-virtual {v3, v8}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0c0059

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 520
    invoke-virtual {v3, v9}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "ord2_sum"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    invoke-virtual {v3, v10}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "ord2_win"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    invoke-virtual {v3, v11}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ord2_per"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    invoke-virtual {v3, v8}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 524
    invoke-virtual {v3, v9}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 525
    invoke-virtual {v3, v10}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 526
    invoke-virtual {v3, v11}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 527
    new-instance v4, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v4}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    invoke-virtual {v0, v3, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 671
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 672
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->setHasOptionsMenu(Z)V

    .line 673
    return-void
.end method

.method public onClickButtonCallback(IIII)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "deck"    # I
    .param p3, "id"    # I
    .param p4, "pos"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 539
    const-string v0, "DeckAnalyzeFragment"

    const-string v1, "onClickButtonCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    if-ne p1, v2, :cond_0

    .line 541
    if-ne p2, v2, :cond_1

    .line 542
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->showDeck:Ljava/util/HashMap;

    const-string v1, "mydeck"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->showDeck:Ljava/util/HashMap;

    const-string v1, "deck"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    invoke-virtual {p0, v3}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->updateDeckLabel(I)V

    .line 545
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->updateDeckAnalyze()V

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->showDeck:Ljava/util/HashMap;

    const-string v1, "mydeck"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->showDeck:Ljava/util/HashMap;

    const-string v1, "deck"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    invoke-virtual {p0, v3}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->updateDeckLabel(I)V

    .line 551
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->updateDeckAnalyze()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 97
    const-string v1, "DeckAnalyzeFragment"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    iput-object p0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->fm:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    .line 108
    new-instance v0, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, "idb":Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->open()V

    .line 110
    const-string v1, "offline"

    invoke-virtual {v0, v1}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 111
    iput-boolean v3, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->offline_mode:Z

    .line 115
    :goto_0
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->close()V

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->showDeck:Ljava/util/HashMap;

    .line 124
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->showDeck:Ljava/util/HashMap;

    const-string v2, "mydeck"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->showDeck:Ljava/util/HashMap;

    const-string v2, "deck"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void

    .line 113
    :cond_0
    iput-boolean v4, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->offline_mode:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0701a7

    .line 136
    const-string v0, "DeckAnalyzeFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const v0, 0x7f090036

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->view:Landroid/view/View;

    .line 138
    iget-boolean v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->flag:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->updateListData()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->flag:Z

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->view:Landroid/view/View;

    const v1, 0x7f070098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$1;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->view:Landroid/view/View;

    const v1, 0x7f0700cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fontawesome-webfont.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 152
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->view:Landroid/view/View;

    const v1, 0x7f070050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fontawesome-webfont.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 155
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090060

    invoke-direct {v0, v1, v2}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->label_adapter:Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;

    .line 156
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->label_adapter:Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;

    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->setDropDownViewResource(I)V

    .line 157
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$2;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$2;-><init>(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 172
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->label_adapter:Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 173
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setFocusable(Z)V

    .line 175
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 660
    const-string v0, "DeckAnalyzeFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 662
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 654
    const-string v0, "DeckAnalyzeFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 656
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 642
    const-string v0, "DeckAnalyzeFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 644
    return-void
.end method

.method public onRedirectLoad(III)V
    .locals 4
    .param p1, "deck_id"    # I
    .param p2, "decktype"    # I
    .param p3, "deckLabel"    # I

    .prologue
    const/4 v3, 0x0

    .line 562
    const-string v0, "DeckAnalyzeFragment"

    const-string v1, "onRedirectLoad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    if-lez p1, :cond_2

    .line 564
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->showDeck:Ljava/util/HashMap;

    const-string v1, "mydeck"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->showDeck:Ljava/util/HashMap;

    const-string v1, "deck"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    if-lez p3, :cond_1

    .line 567
    invoke-virtual {p0, p3}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->updateDeckLabel(I)V

    .line 571
    :goto_0
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->updateDeckAnalyze()V

    .line 580
    :cond_0
    :goto_1
    return-void

    .line 569
    :cond_1
    invoke-virtual {p0, v3}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->updateDeckLabel(I)V

    goto :goto_0

    .line 573
    :cond_2
    if-lez p2, :cond_0

    .line 574
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->showDeck:Ljava/util/HashMap;

    const-string v1, "mydeck"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->showDeck:Ljava/util/HashMap;

    const-string v1, "deck"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    invoke-virtual {p0, v3}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->updateDeckLabel(I)V

    .line 577
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->updateDeckAnalyze()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 636
    const-string v0, "DeckAnalyzeFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 638
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 630
    const-string v0, "DeckAnalyzeFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 632
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 648
    const-string v0, "DeckAnalyzeFragment"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 650
    return-void
.end method

.method public updateDeckAnalyze()V
    .locals 2

    .prologue
    .line 310
    const-string v0, "DeckAnalyzeFragment"

    const-string v1, "updateDeckAnalyze"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/MyPageActivity;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/MyPageActivity;->prieodSet:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->prieodSet:Ljava/util/HashMap;

    .line 312
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/MyPageActivity;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/MyPageActivity;->formatSet:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->formatSet:Ljava/util/ArrayList;

    .line 314
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;-><init>(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 430
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 431
    return-void
.end method

.method public updateDeckLabel(I)V
    .locals 9
    .param p1, "label_aid"    # I

    .prologue
    .line 249
    const-string v6, "DeckAnalyzeFragment"

    const-string v7, "updateDeckLabel"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->labelPosition:Ljava/lang/Integer;

    .line 251
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->labelData:Ljava/util/List;

    .line 252
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->showDeck:Ljava/util/HashMap;

    const-string v7, "mydeck"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_2

    .line 253
    new-instance v2, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;-><init>(Landroid/content/Context;)V

    .line 254
    .local v2, "ldb":Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->open()V

    .line 255
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select * from SV_MYDECK_LABEL where delete_flag=0 and Deck_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->showDeck:Ljava/util/HashMap;

    const-string v8, "mydeck"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " order by give_date desc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 256
    .local v1, "label_raw":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->close()V

    .line 257
    const/4 v0, 0x1

    .line 258
    .local v0, "cnt":I
    const-string v5, ""

    .line 259
    .local v5, "tmp_to":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 260
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 261
    .local v4, "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 262
    const-string v6, "to"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :goto_1
    const-string v8, "from"

    const-string v6, "give_date"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v6, "give_date"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 268
    const-string v8, "label"

    const-string v6, "label"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    if-lez p1, :cond_0

    const-string v6, "aid"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne p1, v6, :cond_0

    .line 270
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->labelPosition:Ljava/lang/Integer;

    .line 272
    :cond_0
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->labelData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v0, v0, 0x1

    .line 275
    goto :goto_0

    .line 264
    :cond_1
    const-string v6, "to"

    const-string v8, "0"

    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 279
    .end local v0    # "cnt":I
    .end local v1    # "label_raw":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "ldb":Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "tmp_to":Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;

    invoke-direct {v7, p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;-><init>(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 303
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 304
    return-void
.end method

.method public updateDeckList()V
    .locals 2

    .prologue
    .line 197
    const-string v0, "DeckAnalyzeFragment"

    const-string v1, "updateDeckList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;-><init>(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 241
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 242
    return-void
.end method

.method protected updateListData()V
    .locals 2

    .prologue
    .line 184
    const-string v0, "DeckAnalyzeFragment"

    const-string v1, "updateListData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->updateDeckList()V

    .line 186
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->showDeck:Ljava/util/HashMap;

    const-string v1, "deck"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->showDeck:Ljava/util/HashMap;

    const-string v1, "mydeck"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 187
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->updateDeckLabel(I)V

    .line 188
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->updateDeckAnalyze()V

    .line 190
    :cond_1
    return-void
.end method
