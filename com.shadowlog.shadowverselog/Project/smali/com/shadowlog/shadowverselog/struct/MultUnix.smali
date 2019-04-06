.class public Lcom/shadowlog/shadowverselog/struct/MultUnix;
.super Ljava/lang/Object;
.source "MultUnix.java"


# instance fields
.field private javaUnix:J

.field private unix:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide v0, p0, Lcom/shadowlog/shadowverselog/struct/MultUnix;->unix:J

    .line 10
    iput-wide v0, p0, Lcom/shadowlog/shadowverselog/struct/MultUnix;->javaUnix:J

    return-void
.end method


# virtual methods
.method public getJx()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/shadowlog/shadowverselog/struct/MultUnix;->javaUnix:J

    return-wide v0
.end method

.method public getUx()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/shadowlog/shadowverselog/struct/MultUnix;->unix:J

    return-wide v0
.end method

.method public putJxDate()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x3c

    .line 53
    iget-wide v0, p0, Lcom/shadowlog/shadowverselog/struct/MultUnix;->javaUnix:J

    const-wide/32 v2, 0x1ee6280

    add-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    mul-long/2addr v0, v4

    mul-long/2addr v0, v4

    const-wide/16 v2, 0x18

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public putJxTime()J
    .locals 6

    .prologue
    const-wide/32 v4, 0x1ee6280

    const-wide/16 v0, 0x0

    .line 60
    iget-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/MultUnix;->javaUnix:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 61
    iget-wide v0, p0, Lcom/shadowlog/shadowverselog/struct/MultUnix;->javaUnix:J

    add-long/2addr v0, v4

    const-wide/32 v2, 0x5265c00

    rem-long/2addr v0, v2

    sub-long/2addr v0, v4

    .line 63
    :cond_0
    return-wide v0
.end method

.method public putUxDate()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x3c

    const-wide/16 v0, 0x0

    .line 36
    iget-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/MultUnix;->unix:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 37
    iget-wide v0, p0, Lcom/shadowlog/shadowverselog/struct/MultUnix;->unix:J

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    mul-long/2addr v0, v4

    mul-long/2addr v0, v4

    const-wide/16 v2, 0x18

    mul-long/2addr v0, v2

    .line 39
    :cond_0
    return-wide v0
.end method

.method public putUxTime()J
    .locals 4

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/shadowlog/shadowverselog/struct/MultUnix;->unix:J

    const-wide/32 v2, 0x15180

    rem-long/2addr v0, v2

    return-wide v0
.end method

.method public setAdvancedDate(III)V
    .locals 6
    .param p1, "year"    # I
    .param p2, "mon"    # I
    .param p3, "day"    # I

    .prologue
    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 71
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 72
    const/16 v4, 0x9

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 73
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/struct/MultUnix;->putJxTime()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/shadowlog/shadowverselog/struct/MultUnix;->setJx(J)V

    .line 74
    return-void
.end method

.method public setAdvancedTime(II)V
    .locals 6
    .param p1, "hour"    # I
    .param p2, "min"    # I

    .prologue
    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 81
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 82
    const/16 v1, 0x7b2

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 83
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/struct/MultUnix;->putJxDate()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/shadowlog/shadowverselog/struct/MultUnix;->setJx(J)V

    .line 84
    return-void
.end method

.method public setJx(J)V
    .locals 5
    .param p1, "java_unixtime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 21
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    .line 22
    iput-wide p1, p0, Lcom/shadowlog/shadowverselog/struct/MultUnix;->javaUnix:J

    .line 23
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x7e90

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shadowlog/shadowverselog/struct/MultUnix;->unix:J

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    iput-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/MultUnix;->javaUnix:J

    iput-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/MultUnix;->unix:J

    goto :goto_0
.end method

.method public setUx(J)V
    .locals 5
    .param p1, "unixtime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 13
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    .line 14
    iput-wide p1, p0, Lcom/shadowlog/shadowverselog/struct/MultUnix;->unix:J

    .line 15
    const-wide/16 v0, 0x7e90

    add-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shadowlog/shadowverselog/struct/MultUnix;->javaUnix:J

    .line 19
    :goto_0
    return-void

    .line 17
    :cond_0
    iput-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/MultUnix;->javaUnix:J

    iput-wide v2, p0, Lcom/shadowlog/shadowverselog/struct/MultUnix;->unix:J

    goto :goto_0
.end method
