.class public final Lrx/internal/util/unsafe/SpscArrayQueue;
.super Lrx/internal/util/unsafe/SpscArrayQueueL3Pad;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpscArrayQueueL3Pad",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 111
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpscArrayQueueL3Pad;-><init>(I)V

    .line 112
    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 122
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "Null is not a valid element"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_0
    iget-object v0, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 126
    .local v0, "lElementBuffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v4, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->producerIndex:J

    iget-wide v6, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->producerLookAhead:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_2

    .line 127
    iget-wide v4, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->producerIndex:J

    iget v1, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->lookAheadStep:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lrx/internal/util/unsafe/SpscArrayQueue;->calcElementOffset(J)J

    move-result-wide v4

    invoke-virtual {p0, v0, v4, v5}, Lrx/internal/util/unsafe/SpscArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 128
    const/4 v1, 0x0

    .line 135
    :goto_0
    return v1

    .line 130
    :cond_1
    iget-wide v4, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->producerIndex:J

    iget v1, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->lookAheadStep:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->producerLookAhead:J

    .line 132
    :cond_2
    iget-wide v4, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->producerIndex:J

    invoke-virtual {p0, v4, v5}, Lrx/internal/util/unsafe/SpscArrayQueue;->calcElementOffset(J)J

    move-result-wide v2

    .line 133
    .local v2, "offset":J
    iget-wide v4, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->producerIndex:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->producerIndex:J

    .line 134
    invoke-virtual {p0, v0, v2, v3, p1}, Lrx/internal/util/unsafe/SpscArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 135
    const/4 v1, 0x1

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
    .line 164
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    iget-wide v0, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->consumerIndex:J

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/SpscArrayQueue;->calcElementOffset(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/SpscArrayQueue;->lvElement(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    const/4 v4, 0x0

    .line 145
    iget-wide v6, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->consumerIndex:J

    invoke-virtual {p0, v6, v7}, Lrx/internal/util/unsafe/SpscArrayQueue;->calcElementOffset(J)J

    move-result-wide v2

    .line 147
    .local v2, "offset":J
    iget-object v1, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 148
    .local v1, "lElementBuffer":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0, v1, v2, v3}, Lrx/internal/util/unsafe/SpscArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 149
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    move-object v0, v4

    .line 154
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v0

    .line 152
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    iget-wide v6, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->consumerIndex:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->consumerIndex:J

    .line 153
    invoke-virtual {p0, v1, v2, v3, v4}, Lrx/internal/util/unsafe/SpscArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0
.end method

.method public size()I
    .locals 8

    .prologue
    .line 174
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpscArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 176
    .local v0, "after":J
    :cond_0
    move-wide v2, v0

    .line 177
    .local v2, "before":J
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpscArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 178
    .local v4, "currentProducerIndex":J
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpscArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 179
    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    .line 180
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method
