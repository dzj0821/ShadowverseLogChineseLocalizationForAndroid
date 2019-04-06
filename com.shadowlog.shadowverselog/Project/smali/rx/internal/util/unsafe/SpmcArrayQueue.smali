.class public final Lrx/internal/util/unsafe/SpmcArrayQueue;
.super Lrx/internal/util/unsafe/SpmcArrayQueueL3Pad;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpmcArrayQueueL3Pad",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpmcArrayQueueL3Pad;-><init>(I)V

    .line 127
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 4

    .prologue
    .line 218
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 132
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "Null is not a valid element"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 134
    :cond_0
    iget-object v2, p0, Lrx/internal/util/unsafe/SpmcArrayQueue;->buffer:[Ljava/lang/Object;

    .line 135
    .local v2, "lb":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    .line 136
    .local v0, "currProducerIndex":J
    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/SpmcArrayQueue;->calcElementOffset(J)J

    move-result-wide v4

    .line 137
    .local v4, "offset":J
    invoke-virtual {p0, v2, v4, v5}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 139
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v6

    sub-long v6, v0, v6

    long-to-int v3, v6

    .line 140
    .local v3, "size":I
    iget v6, p0, Lrx/internal/util/unsafe/SpmcArrayQueue;->capacity:I

    if-ne v3, v6, :cond_1

    .line 141
    const/4 v6, 0x0

    .line 152
    .end local v3    # "size":I
    :goto_0
    return v6

    .line 145
    .restart local v3    # "size":I
    :cond_1
    invoke-virtual {p0, v2, v4, v5}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 148
    .end local v3    # "size":I
    :cond_2
    invoke-virtual {p0, v2, v4, v5, p1}, Lrx/internal/util/unsafe/SpmcArrayQueue;->spElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 151
    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    invoke-virtual {p0, v6, v7}, Lrx/internal/util/unsafe/SpmcArrayQueue;->soTail(J)V

    .line 152
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/SpmcArrayQueue;->calcElementOffset(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvElement(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    const/4 v10, 0x0

    .line 166
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndexCache()J

    move-result-wide v2

    .line 168
    .local v2, "currProducerIndexCache":J
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v4

    .line 169
    .local v4, "currentConsumerIndex":J
    cmp-long v11, v4, v2

    if-ltz v11, :cond_2

    .line 170
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    .line 171
    .local v0, "currProducerIndex":J
    cmp-long v11, v4, v0

    if-ltz v11, :cond_1

    move-object v6, v10

    .line 186
    .end local v0    # "currProducerIndex":J
    :goto_0
    return-object v6

    .line 174
    .restart local v0    # "currProducerIndex":J
    :cond_1
    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/SpmcArrayQueue;->svProducerIndexCache(J)V

    .line 177
    .end local v0    # "currProducerIndex":J
    :cond_2
    const-wide/16 v12, 0x1

    add-long/2addr v12, v4

    invoke-virtual {p0, v4, v5, v12, v13}, Lrx/internal/util/unsafe/SpmcArrayQueue;->casHead(JJ)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 180
    invoke-virtual {p0, v4, v5}, Lrx/internal/util/unsafe/SpmcArrayQueue;->calcElementOffset(J)J

    move-result-wide v8

    .line 181
    .local v8, "offset":J
    iget-object v7, p0, Lrx/internal/util/unsafe/SpmcArrayQueue;->buffer:[Ljava/lang/Object;

    .line 183
    .local v7, "lb":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0, v7, v8, v9}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lpElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 185
    .local v6, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v7, v8, v9, v10}, Lrx/internal/util/unsafe/SpmcArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0
.end method

.method public size()I
    .locals 8

    .prologue
    .line 201
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 203
    .local v0, "after":J
    :cond_0
    move-wide v2, v0

    .line 204
    .local v2, "before":J
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 205
    .local v4, "currentProducerIndex":J
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 206
    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    .line 207
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method
