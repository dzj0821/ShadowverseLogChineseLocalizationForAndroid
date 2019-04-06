.class public Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "KeyValuePairArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-object v0
.end method

.method public getPosition(I)I
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 60
    const/4 v1, -0x1

    .line 61
    .local v1, "position":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 62
    invoke-virtual {p0, v0}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 63
    move v1, v0

    .line 67
    :cond_0
    return v1

    .line 61
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 39
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-object v0
.end method
