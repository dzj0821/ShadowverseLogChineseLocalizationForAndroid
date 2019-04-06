.class public Lrx/internal/util/unsafe/MpmcArrayQueue;
.super Lrx/internal/util/unsafe/MpmcArrayQueueConsumerField;
.source "MpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/MpmcArrayQueueConsumerField",
        "<TE;>;"
    }
.end annotation


# instance fields
.field p30:J

.field p31:J

.field p32:J

.field p33:J

.field p34:J

.field p35:J

.field p36:J

.field p37:J

.field p40:J

.field p41:J

.field p42:J

.field p43:J

.field p44:J

.field p45:J

.field p46:J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 116
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueue;, "Lrx/internal/util/unsafe/MpmcArrayQueue<TE;>;"
    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lrx/internal/util/unsafe/MpmcArrayQueueConsumerField;-><init>(I)V

    .line 117
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 4

    .prologue
    .line 239
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueue;, "Lrx/internal/util/unsafe/MpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvProducerIndex()J

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
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueue;, "Lrx/internal/util/unsafe/MpmcArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v4, "Null is not a valid element"

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v1, p0, Lrx/internal/util/unsafe/MpmcArrayQueue;->sequenceBuffer:[J

    .line 131
    .local v1, "lSequenceBuffer":[J
    :cond_1
    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v6

    .line 132
    .local v6, "currentProducerIndex":J
    invoke-virtual {p0, v6, v7}, Lrx/internal/util/unsafe/MpmcArrayQueue;->calcSequenceOffset(J)J

    move-result-wide v2

    .line 133
    .local v2, "seqOffset":J
    invoke-virtual {p0, v1, v2, v3}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvSequence([JJ)J

    move-result-wide v12

    .line 134
    .local v12, "seq":J
    sub-long v8, v12, v6

    .line 136
    .local v8, "delta":J
    const-wide/16 v4, 0x0

    cmp-long v0, v8, v4

    if-nez v0, :cond_2

    .line 138
    const-wide/16 v4, 0x1

    add-long/2addr v4, v6

    invoke-virtual {p0, v6, v7, v4, v5}, Lrx/internal/util/unsafe/MpmcArrayQueue;->casProducerIndex(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p0, v6, v7}, Lrx/internal/util/unsafe/MpmcArrayQueue;->calcElementOffset(J)J

    move-result-wide v10

    .line 153
    .local v10, "elementOffset":J
    invoke-virtual {p0, v10, v11, p1}, Lrx/internal/util/unsafe/MpmcArrayQueue;->spElement(JLjava/lang/Object;)V

    .line 157
    const-wide/16 v4, 0x1

    add-long/2addr v4, v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lrx/internal/util/unsafe/MpmcArrayQueue;->soSequence([JJJ)V

    .line 159
    const/4 v0, 0x1

    .end local v10    # "elementOffset":J
    :goto_0
    return v0

    .line 143
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v0, v8, v4

    if-gez v0, :cond_1

    .line 145
    const/4 v0, 0x0

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
    .line 212
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueue;, "Lrx/internal/util/unsafe/MpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/MpmcArrayQueue;->calcElementOffset(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lpElement(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueue;, "Lrx/internal/util/unsafe/MpmcArrayQueue<TE;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/internal/util/unsafe/MpmcArrayQueue;->sequenceBuffer:[J

    .line 175
    .local v3, "lSequenceBuffer":[J
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v8

    .line 176
    .local v8, "currentConsumerIndex":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lrx/internal/util/unsafe/MpmcArrayQueue;->calcSequenceOffset(J)J

    move-result-wide v4

    .line 177
    .local v4, "seqOffset":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvSequence([JJ)J

    move-result-wide v16

    .line 178
    .local v16, "seq":J
    const-wide/16 v6, 0x1

    add-long/2addr v6, v8

    sub-long v10, v16, v6

    .line 180
    .local v10, "delta":J
    const-wide/16 v6, 0x0

    cmp-long v2, v10, v6

    if-nez v2, :cond_1

    .line 181
    const-wide/16 v6, 0x1

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v6, v7}, Lrx/internal/util/unsafe/MpmcArrayQueue;->casConsumerIndex(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lrx/internal/util/unsafe/MpmcArrayQueue;->calcElementOffset(J)J

    move-result-wide v14

    .line 200
    .local v14, "offset":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lpElement(J)Ljava/lang/Object;

    move-result-object v12

    .line 201
    .local v12, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v2}, Lrx/internal/util/unsafe/MpmcArrayQueue;->spElement(JLjava/lang/Object;)V

    .line 205
    move-object/from16 v0, p0

    iget v2, v0, Lrx/internal/util/unsafe/MpmcArrayQueue;->capacity:I

    int-to-long v6, v2

    add-long/2addr v6, v8

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lrx/internal/util/unsafe/MpmcArrayQueue;->soSequence([JJJ)V

    .line 207
    .end local v12    # "e":Ljava/lang/Object;, "TE;"
    .end local v14    # "offset":J
    :goto_0
    return-object v12

    .line 186
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v2, v10, v6

    if-gez v2, :cond_0

    .line 192
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 8

    .prologue
    .line 222
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueue;, "Lrx/internal/util/unsafe/MpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 224
    .local v0, "after":J
    :cond_0
    move-wide v2, v0

    .line 225
    .local v2, "before":J
    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 226
    .local v4, "currentProducerIndex":J
    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 227
    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    .line 228
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method
