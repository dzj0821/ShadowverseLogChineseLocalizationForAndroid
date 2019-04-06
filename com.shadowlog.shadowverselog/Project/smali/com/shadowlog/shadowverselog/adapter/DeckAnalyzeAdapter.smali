.class public Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeckAnalyzeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private fm:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

.field private inflater:Landroid/view/LayoutInflater;

.field private layoutID:I

.field private list:Ljava/util/List;
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

.field private selected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLayoutId"    # I
    .param p4, "fragment"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p3, "alist":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;->selected:I

    .line 42
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;->context:Landroid/content/Context;

    .line 43
    iput-object p4, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;->fm:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    .line 44
    iput-object p3, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;->list:Ljava/util/List;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 46
    iput p2, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;->layoutID:I

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;)Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;->fm:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;

    .prologue
    .line 26
    iget v0, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;->selected:I

    return v0
.end method

.method static synthetic access$102(Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;->selected:I

    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 59
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v9, 0x12

    const/4 v8, 0x0

    .line 67
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 69
    .local v7, "rs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 70
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;->layoutID:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 71
    new-instance v6, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$ViewHolder;

    invoke-direct {v6}, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$ViewHolder;-><init>()V

    .line 72
    .local v6, "holder":Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$ViewHolder;
    const v0, 0x7f07017b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f070180

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v6, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$ViewHolder;->myLeader:Landroid/widget/ImageView;

    .line 74
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    :goto_0
    iget-object v1, v6, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$ViewHolder;->myLeader:Landroid/widget/ImageView;

    sget-object v4, Lcom/shadowlog/shadowverselog/lib/Defines;->thumbResource:Ljava/util/HashMap;

    const-string v0, "leader"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    const/4 v2, 0x0

    .local v2, "deck":I
    const/4 v3, 0x0

    .line 84
    .local v3, "id":I
    const-string v0, "deck"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 85
    iget-object v1, v6, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const-string v0, "name"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, ".."

    invoke-static {v0, v8, v9, v4}, Lcom/shadowlog/shadowverselog/function/StringFunc;->mb_sTrimWidth(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const/4 v2, 0x1

    .line 87
    const-string v0, "deck"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 94
    :cond_0
    :goto_1
    iget v0, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;->selected:I

    if-ne p1, v0, :cond_3

    .line 95
    const v0, 0x7f040079

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 101
    :goto_2
    new-instance v0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$1;

    move-object v1, p0

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$1;-><init>(Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;IIILandroid/view/ViewGroup;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-object p2

    .line 76
    .end local v2    # "deck":I
    .end local v3    # "id":I
    .end local v6    # "holder":Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$ViewHolder;

    .restart local v6    # "holder":Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$ViewHolder;
    goto :goto_0

    .line 88
    .restart local v2    # "deck":I
    .restart local v3    # "id":I
    :cond_2
    const-string v0, "mydeck"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v1, v6, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$ViewHolder;->name:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2605 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v0, "name"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, ".."

    invoke-static {v0, v8, v9, v5}, Lcom/shadowlog/shadowverselog/function/StringFunc;->mb_sTrimWidth(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const/4 v2, 0x2

    .line 91
    const-string v0, "mydeck"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 97
    :cond_3
    const v0, 0x7f040078

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public setMyDeckID(IILandroid/view/ViewGroup;)V
    .locals 11
    .param p1, "deckID"    # I
    .param p2, "deckType"    # I
    .param p3, "vg"    # Landroid/view/ViewGroup;

    .prologue
    const v10, 0x7f040079

    const v9, 0x7f040078

    .line 125
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 126
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    const/16 v6, 0xaa

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 127
    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    const/4 v5, 0x0

    .local v5, "x":I
    const/4 v4, 0x0

    .line 130
    .local v4, "selectionPos":I
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 131
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "mydeck"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 132
    const-string v6, "mydeck"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 133
    iput v5, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;->selected:I

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 135
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move-object v6, p3

    .line 137
    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 138
    .local v3, "pos":I
    if-lt v5, v3, :cond_1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    sub-int v8, v5, v3

    if-le v6, v8, :cond_1

    sub-int v6, v5, v3

    invoke-virtual {p3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 150
    .end local v0    # "i":I
    .end local v3    # "pos":I
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 151
    goto :goto_0

    .line 140
    :cond_2
    if-lez p2, :cond_1

    .line 141
    const-string v6, "deck"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, p2, :cond_1

    .line 142
    iput v5, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;->selected:I

    .line 143
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 144
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move-object v6, p3

    .line 146
    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 147
    .restart local v3    # "pos":I
    if-lt v5, v3, :cond_1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    sub-int v8, v5, v3

    if-le v6, v8, :cond_1

    sub-int v6, v5, v3

    invoke-virtual {p3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 155
    .end local v0    # "i":I
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "pos":I
    :cond_4
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$2;

    invoke-direct {v7, p0, p3}, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$2;-><init>(Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;Landroid/view/ViewGroup;)V

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    return-void
.end method
