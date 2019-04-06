.class final Lrx/android/widget/AutoValue_OnListViewScrollEvent;
.super Lrx/android/widget/OnListViewScrollEvent;
.source "AutoValue_OnListViewScrollEvent.java"


# instance fields
.field private final firstVisibleItem:I

.field private final listView:Landroid/widget/AbsListView;

.field private final scrollState:I

.field private final totalItemCount:I

.field private final visibleItemCount:I


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;IIII)V
    .locals 2
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I
    .param p3, "firstVisibleItem"    # I
    .param p4, "visibleItemCount"    # I
    .param p5, "totalItemCount"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Lrx/android/widget/OnListViewScrollEvent;-><init>()V

    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null listView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    iput-object p1, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->listView:Landroid/widget/AbsListView;

    .line 23
    iput p2, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->scrollState:I

    .line 24
    iput p3, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->firstVisibleItem:I

    .line 25
    iput p4, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->visibleItemCount:I

    .line 26
    iput p5, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->totalItemCount:I

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    if-ne p1, p0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 70
    :cond_1
    instance-of v3, p1, Lrx/android/widget/OnListViewScrollEvent;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 71
    check-cast v0, Lrx/android/widget/OnListViewScrollEvent;

    .line 72
    .local v0, "that":Lrx/android/widget/OnListViewScrollEvent;
    iget-object v3, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->listView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Lrx/android/widget/OnListViewScrollEvent;->listView()Landroid/widget/AbsListView;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->scrollState:I

    .line 73
    invoke-virtual {v0}, Lrx/android/widget/OnListViewScrollEvent;->scrollState()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->firstVisibleItem:I

    .line 74
    invoke-virtual {v0}, Lrx/android/widget/OnListViewScrollEvent;->firstVisibleItem()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->visibleItemCount:I

    .line 75
    invoke-virtual {v0}, Lrx/android/widget/OnListViewScrollEvent;->visibleItemCount()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->totalItemCount:I

    .line 76
    invoke-virtual {v0}, Lrx/android/widget/OnListViewScrollEvent;->totalItemCount()I

    move-result v4

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "that":Lrx/android/widget/OnListViewScrollEvent;
    :cond_3
    move v1, v2

    .line 78
    goto :goto_0
.end method

.method public firstVisibleItem()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->firstVisibleItem:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const v2, 0xf4243

    .line 83
    const/4 v0, 0x1

    .line 84
    .local v0, "h":I
    mul-int/2addr v0, v2

    .line 85
    iget-object v1, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->listView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 86
    mul-int/2addr v0, v2

    .line 87
    iget v1, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->scrollState:I

    xor-int/2addr v0, v1

    .line 88
    mul-int/2addr v0, v2

    .line 89
    iget v1, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->firstVisibleItem:I

    xor-int/2addr v0, v1

    .line 90
    mul-int/2addr v0, v2

    .line 91
    iget v1, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->visibleItemCount:I

    xor-int/2addr v0, v1

    .line 92
    mul-int/2addr v0, v2

    .line 93
    iget v1, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->totalItemCount:I

    xor-int/2addr v0, v1

    .line 94
    return v0
.end method

.method public listView()Landroid/widget/AbsListView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->listView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method public scrollState()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->scrollState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnListViewScrollEvent{listView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->listView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scrollState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->scrollState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firstVisibleItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->firstVisibleItem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", visibleItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->visibleItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->totalItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalItemCount()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->totalItemCount:I

    return v0
.end method

.method public visibleItemCount()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->visibleItemCount:I

    return v0
.end method
