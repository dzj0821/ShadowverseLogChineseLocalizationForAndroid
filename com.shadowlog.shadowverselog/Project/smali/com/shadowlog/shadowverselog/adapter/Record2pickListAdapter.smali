.class public Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;
.super Landroid/widget/BaseAdapter;
.source "Record2pickListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private fm:Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

.field private inflater:Landroid/view/LayoutInflater;

.field private layoutID:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLayoutId"    # I
    .param p4, "fragment"    # Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;",
            ">;",
            "Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p3, "alist":Ljava/util/List;, "Ljava/util/List<Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;->context:Landroid/content/Context;

    .line 45
    iput-object p4, p0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;->fm:Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    .line 46
    iput-object p3, p0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;->list:Ljava/util/List;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 48
    iput p2, p0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;->layoutID:I

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;)Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;->fm:Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 61
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 69
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;

    .line 71
    .local v1, "rs":Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;
    if-nez p2, :cond_1

    .line 72
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;->layoutID:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    new-instance v0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$ViewHolder;-><init>()V

    .line 75
    .local v0, "holder":Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$ViewHolder;
    const v3, 0x7f07017e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$ViewHolder;->result:Landroid/widget/TextView;

    .line 76
    iget-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$ViewHolder;->result:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fontawesome-webfont.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 77
    const v3, 0x7f07017a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$ViewHolder;->myLeaderName:Landroid/widget/TextView;

    .line 78
    const v3, 0x7f070180

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$ViewHolder;->myLeader:Landroid/widget/ImageView;

    .line 80
    const v3, 0x7f070172

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$ViewHolder;->deckUrl:Landroid/widget/Button;

    .line 82
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    :goto_0
    iget-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$ViewHolder;->myLeaderName:Landroid/widget/TextView;

    sget-object v3, Lcom/shadowlog/shadowverselog/lib/Defines;->leader:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->myLeader:Ljava/lang/Integer;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$ViewHolder;->myLeader:Landroid/widget/ImageView;

    sget-object v3, Lcom/shadowlog/shadowverselog/lib/Defines;->thumbResource:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->myLeader:Ljava/lang/Integer;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    iget-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$ViewHolder;->result:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->resString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v3, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$1;

    iget-object v4, v1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->aid:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$1;-><init>(Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v3, v1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->deck_url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 115
    iget-object v3, v1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->deck_url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 116
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$ViewHolder;->deckUrl:Landroid/widget/Button;

    const v4, 0x7f040039

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 117
    iget-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$ViewHolder;->deckUrl:Landroid/widget/Button;

    new-instance v4, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$2;

    iget-object v5, v1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->aid:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, p0, v5, v2}, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$2;-><init>(Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;ILandroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    return-object p2

    .line 84
    .end local v0    # "holder":Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$ViewHolder;
    goto :goto_0
.end method
