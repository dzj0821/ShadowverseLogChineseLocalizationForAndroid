.class public abstract Lrx/Subscriber;
.super Ljava/lang/Object;
.source "Subscriber.java"

# interfaces
.implements Lrx/Observer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<TT;>;",
        "Lrx/Subscription;"
    }
.end annotation


# instance fields
.field private final cs:Lrx/internal/util/SubscriptionList;

.field private final op:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<*>;"
        }
    .end annotation
.end field

.field private p:Lrx/Producer;

.field private requested:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 42
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lrx/Subscriber;->requested:J

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/Subscriber;->op:Lrx/Subscriber;

    .line 44
    new-instance v0, Lrx/internal/util/SubscriptionList;

    invoke-direct {v0}, Lrx/internal/util/SubscriptionList;-><init>()V

    iput-object v0, p0, Lrx/Subscriber;->cs:Lrx/internal/util/SubscriptionList;

    .line 45
    return-void
.end method

.method protected constructor <init>(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    .local p1, "op":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lrx/Subscriber;->requested:J

    .line 48
    iput-object p1, p0, Lrx/Subscriber;->op:Lrx/Subscriber;

    .line 49
    iget-object v0, p1, Lrx/Subscriber;->cs:Lrx/internal/util/SubscriptionList;

    iput-object v0, p0, Lrx/Subscriber;->cs:Lrx/internal/util/SubscriptionList;

    .line 50
    return-void
.end method


# virtual methods
.method public final add(Lrx/Subscription;)V
    .locals 1
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 61
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v0, p0, Lrx/Subscriber;->cs:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0, p1}, Lrx/internal/util/SubscriptionList;->add(Lrx/Subscription;)V

    .line 62
    return-void
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v0, p0, Lrx/Subscriber;->cs:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 86
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    return-void
.end method

.method protected final request(J)V
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 97
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    const/4 v0, 0x0

    .line 98
    .local v0, "shouldRequest":Lrx/Producer;
    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v1, p0, Lrx/Subscriber;->p:Lrx/Producer;

    if-eqz v1, :cond_1

    .line 100
    iget-object v0, p0, Lrx/Subscriber;->p:Lrx/Producer;

    .line 104
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    .line 109
    :cond_0
    return-void

    .line 102
    :cond_1
    :try_start_1
    iput-wide p1, p0, Lrx/Subscriber;->requested:J

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 6
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    const-wide/high16 v4, -0x8000000000000000L

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "setProducer":Z
    monitor-enter p0

    .line 120
    :try_start_0
    iget-wide v2, p0, Lrx/Subscriber;->requested:J

    .line 121
    .local v2, "toRequest":J
    iput-object p1, p0, Lrx/Subscriber;->p:Lrx/Producer;

    .line 122
    iget-object v1, p0, Lrx/Subscriber;->op:Lrx/Subscriber;

    if-eqz v1, :cond_0

    .line 124
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 126
    const/4 v0, 0x1

    .line 130
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    if-eqz v0, :cond_1

    .line 133
    iget-object v1, p0, Lrx/Subscriber;->op:Lrx/Subscriber;

    iget-object v4, p0, Lrx/Subscriber;->p:Lrx/Producer;

    invoke-virtual {v1, v4}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 142
    :goto_0
    return-void

    .line 130
    .end local v2    # "toRequest":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 136
    .restart local v2    # "toRequest":J
    :cond_1
    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 137
    iget-object v1, p0, Lrx/Subscriber;->p:Lrx/Producer;

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface {v1, v4, v5}, Lrx/Producer;->request(J)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v1, p0, Lrx/Subscriber;->p:Lrx/Producer;

    invoke-interface {v1, v2, v3}, Lrx/Producer;->request(J)V

    goto :goto_0
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v0, p0, Lrx/Subscriber;->cs:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->unsubscribe()V

    .line 67
    return-void
.end method
