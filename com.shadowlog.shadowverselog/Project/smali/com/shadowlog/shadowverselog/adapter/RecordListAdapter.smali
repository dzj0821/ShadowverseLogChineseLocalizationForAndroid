.class public Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecordListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private decktype:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fm:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

.field private inflater:Landroid/view/LayoutInflater;

.field private layoutID:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shadowlog/shadowverselog/struct/RecordStruct;",
            ">;"
        }
    .end annotation
.end field

.field private mydecktype:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLayoutId"    # I
    .param p4, "fragment"    # Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/shadowlog/shadowverselog/struct/RecordStruct;",
            ">;",
            "Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p3, "alist":Ljava/util/List;, "Ljava/util/List<Lcom/shadowlog/shadowverselog/struct/RecordStruct;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;->context:Landroid/content/Context;

    .line 51
    iput-object p4, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;->fm:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    .line 52
    iput-object p3, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;->list:Ljava/util/List;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 54
    iput p2, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;->layoutID:I

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;->decktype:Ljava/util/HashMap;

    .line 56
    invoke-static {p1}, Lcom/shadowlog/shadowverselog/function/MakeDeckTypeList;->putBase(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;->decktype:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;->mydecktype:Ljava/util/HashMap;

    .line 58
    invoke-static {p1}, Lcom/shadowlog/shadowverselog/function/MakeDeckTypeList;->putMyDeck(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;->mydecktype:Ljava/util/HashMap;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;)Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;->fm:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 71
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 79
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;

    .line 81
    .local v1, "rs":Lcom/shadowlog/shadowverselog/struct/RecordStruct;
    if-nez p2, :cond_3

    .line 82
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;->layoutID:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 83
    new-instance v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;-><init>()V

    .line 85
    .local v0, "holder":Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;
    const v3, 0x7f07017e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;->result:Landroid/widget/TextView;

    .line 86
    iget-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;->result:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fontawesome-webfont.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 87
    const v3, 0x7f070179

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;->myDeckType:Landroid/widget/TextView;

    .line 88
    const v3, 0x7f070183

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;->vsDeckType:Landroid/widget/TextView;

    .line 89
    const v3, 0x7f07017c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;->ord:Landroid/widget/TextView;

    .line 90
    const v3, 0x7f070180

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;->myLeader:Landroid/widget/ImageView;

    .line 91
    const v3, 0x7f070181

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;->vsLeader:Landroid/widget/ImageView;

    .line 92
    const v3, 0x7f070182

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;->turn:Landroid/widget/TextView;

    .line 94
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    :goto_0
    iget-object v3, v1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->result:Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 102
    iget-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;->result:Landroid/widget/TextView;

    const v4, 0x7f0c0027

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 103
    iget-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;->result:Landroid/widget/TextView;

    const/high16 v4, -0x10000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    :cond_0
    :goto_1
    const-string v2, ""

    .line 111
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;->mydecktype:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->Deck_id:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2605

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;->mydecktype:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->Deck_id:Ljava/lang/Integer;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    :goto_2
    iget-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;->myDeckType:Landroid/widget/TextView;

    const/16 v4, 0xf

    const-string v5, ".."

    invoke-static {v2, v6, v4, v5}, Lcom/shadowlog/shadowverselog/function/StringFunc;->mb_sTrimWidth(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;->vsDeckType:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;->decktype:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsDeckType:Ljava/lang/Integer;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;->myLeader:Landroid/widget/ImageView;

    sget-object v3, Lcom/shadowlog/shadowverselog/lib/Defines;->thumbResource:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;->vsLeader:Landroid/widget/ImageView;

    sget-object v3, Lcom/shadowlog/shadowverselog/lib/Defines;->thumbResource:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    iget-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;->ord:Landroid/widget/TextView;

    sget-object v3, Lcom/shadowlog/shadowverselog/lib/Defines;->ord:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->ord:Ljava/lang/Integer;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v3, v1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->ord:Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 126
    iget-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;->ord:Landroid/widget/TextView;

    const-string v4, "#009900"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    :cond_1
    :goto_3
    sget-object v3, Lcom/shadowlog/shadowverselog/lib/Defines;->turn:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->turn:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/shadowlog/shadowverselog/lib/Defines;->turn:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->turn:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 133
    :cond_2
    iget-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;->turn:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    :goto_4
    new-instance v3, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$1;

    iget-object v4, v1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->aid:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$1;-><init>(Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    new-instance v3, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$2;

    iget-object v4, v1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->Deck_id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myDeckType:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, p0, v4, v5}, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$2;-><init>(Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;II)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 155
    return-object p2

    .line 96
    .end local v0    # "holder":Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;
    .end local v2    # "text":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 104
    :cond_4
    iget-object v3, v1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->result:Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    iget-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;->result:Landroid/widget/TextView;

    const v4, 0x7f0c0024

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 106
    iget-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;->result:Landroid/widget/TextView;

    const v4, -0xffff01

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 114
    .restart local v2    # "text":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;->decktype:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myDeckType:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "text":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "text":Ljava/lang/String;
    goto/16 :goto_2

    .line 127
    :cond_6
    iget-object v3, v1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->ord:Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    iget-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;->ord:Landroid/widget/TextView;

    const-string v4, "#cc0000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 135
    :cond_7
    iget-object v3, v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;->turn:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$ViewHolder;->turn:Landroid/widget/TextView;

    sget-object v3, Lcom/shadowlog/shadowverselog/lib/Defines;->turn:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->turn:Ljava/lang/Integer;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method
