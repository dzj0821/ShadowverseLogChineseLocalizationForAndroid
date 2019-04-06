.class final Lrx/schedulers/EventLoopsScheduler$PoolWorker;
.super Lrx/internal/schedulers/NewThreadWorker;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/EventLoopsScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PoolWorker"
.end annotation


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lrx/internal/schedulers/NewThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 111
    return-void
.end method
