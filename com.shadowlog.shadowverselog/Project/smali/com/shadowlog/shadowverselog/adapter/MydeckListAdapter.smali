.class public Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MydeckListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private fm:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

.field private inflater:Landroid/view/LayoutInflater;

.field private layoutID:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shadowlog/shadowverselog/struct/MydeckStruct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLayoutId"    # I
    .param p4, "fragment"    # Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/shadowlog/shadowverselog/struct/MydeckStruct;",
            ">;",
            "Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p3, "alist":Ljava/util/List;, "Ljava/util/List<Lcom/shadowlog/shadowverselog/struct/MydeckStruct;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;->context:Landroid/content/Context;

    .line 54
    iput-object p4, p0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;->fm:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    .line 55
    iput-object p3, p0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;->list:Ljava/util/List;

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 57
    iput p2, p0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;->layoutID:I

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;)Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;->fm:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 70
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v10, 0x7f040035

    const/4 v9, 0x0

    .line 78
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;

    .line 80
    .local v2, "rs":Lcom/shadowlog/shadowverselog/struct/MydeckStruct;
    if-nez p2, :cond_0

    .line 81
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;->layoutID:I

    invoke-virtual {v4, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 82
    new-instance v0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;-><init>()V

    .line 84
    .local v0, "holder":Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;
    const v4, 0x7f07017b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 85
    const v4, 0x7f070180

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;->myLeader:Landroid/widget/ImageView;

    .line 86
    const v4, 0x7f070174

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;->btnLabel:Landroid/widget/Button;

    .line 87
    const v4, 0x7f070175

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;->btnPub:Landroid/widget/Button;

    .line 88
    const v4, 0x7f070176

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;->btnStruct:Landroid/widget/Button;

    .line 89
    const v4, 0x7f070171

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;->btnAnalyze:Landroid/widget/Button;

    .line 91
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    :goto_0
    iget-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->name:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x14

    const-string v8, ".."

    invoke-static {v5, v6, v7, v8}, Lcom/shadowlog/shadowverselog/function/StringFunc;->mb_sTrimWidth(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v5, v0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;->myLeader:Landroid/widget/ImageView;

    sget-object v4, Lcom/shadowlog/shadowverselog/lib/Defines;->thumbResource:Ljava/util/HashMap;

    iget-object v6, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->myLeader:Ljava/lang/Integer;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    new-instance v4, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$1;

    iget-object v5, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->aid:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, p0, v5}, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$1;-><init>(Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;I)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;->btnLabel:Landroid/widget/Button;

    new-instance v5, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$2;

    iget-object v6, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->aid:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, p0, v6}, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$2;-><init>(Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v4, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->pub_flag:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://shadowlog.com/s/deck/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->aid:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 121
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;->btnPub:Landroid/widget/Button;

    const v5, 0x7f040037

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 122
    iget-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;->btnPub:Landroid/widget/Button;

    new-instance v5, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$3;

    iget-object v6, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->aid:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, p0, v6, v3}, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$3;-><init>(Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;ILandroid/net/Uri;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_1
    iget-object v4, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->deck_url:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 136
    const-string v4, "deckbuilder/create/[0-9]+?\\?hash="

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iget-object v5, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->deck_url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 137
    .local v1, "m":Ljava/util/regex/Matcher;
    const-string v4, "deck/"

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 138
    .restart local v3    # "uri":Landroid/net/Uri;
    iget-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;->btnStruct:Landroid/widget/Button;

    const v5, 0x7f040039

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 139
    iget-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;->btnStruct:Landroid/widget/Button;

    new-instance v5, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$4;

    iget-object v6, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->aid:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, p0, v6, v3}, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$4;-><init>(Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;ILandroid/net/Uri;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_2
    iget-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;->btnAnalyze:Landroid/widget/Button;

    new-instance v5, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$5;

    iget-object v6, v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->aid:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, p0, v6}, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$5;-><init>(Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-object p2

    .line 93
    .end local v0    # "holder":Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 130
    :cond_1
    iget-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;->btnPub:Landroid/widget/Button;

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 131
    iget-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;->btnPub:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 147
    :cond_2
    iget-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;->btnStruct:Landroid/widget/Button;

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 148
    iget-object v4, v0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;->btnStruct:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method
