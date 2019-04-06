.class public Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LabelListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private fm:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

.field private inflater:Landroid/view/LayoutInflater;

.field private layoutID:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLayoutId"    # I
    .param p4, "fragment"    # Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;",
            ">;",
            "Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p3, "alist":Ljava/util/List;, "Ljava/util/List<Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;->context:Landroid/content/Context;

    .line 53
    iput-object p4, p0, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;->fm:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    .line 54
    iput-object p3, p0, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;->list:Ljava/util/List;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 56
    iput p2, p0, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;->layoutID:I

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;)Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;->fm:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;

    .line 79
    .local v2, "rs":Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;
    if-nez p2, :cond_0

    .line 80
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;->layoutID:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 81
    new-instance v1, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter$ViewHolder;-><init>()V

    .line 83
    .local v1, "holder":Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter$ViewHolder;
    const v4, 0x7f070178

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 84
    const v4, 0x7f070177

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 85
    const v4, 0x7f070173

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v1, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter$ViewHolder;->btnEdit:Landroid/widget/Button;

    .line 87
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    :goto_0
    iget-object v4, v1, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter$ViewHolder;->label:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy/MM/dd HH:mm"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 97
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    iget-wide v4, v2, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->give_date:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 98
    .local v0, "date":Ljava/util/Date;
    iget-object v4, v1, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    new-instance v4, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter$1;

    iget-object v5, v2, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->aid:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, p0, v5}, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter$1;-><init>(Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;I)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v4, v1, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter$ViewHolder;->btnEdit:Landroid/widget/Button;

    new-instance v5, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter$2;

    iget-object v6, v2, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->aid:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, p0, v6}, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter$2;-><init>(Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-object p2

    .line 89
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "holder":Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter$ViewHolder;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter$ViewHolder;
    goto :goto_0
.end method
