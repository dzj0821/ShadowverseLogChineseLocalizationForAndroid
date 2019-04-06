.class final Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;
.super Lrx/Subscriber;
.source "OperatorSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SwitchSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<",
        "Lrx/Observable",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field active:Z

.field currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber",
            "<TT;>.InnerSubscriber;"
        }
    .end annotation
.end field

.field emitting:Z

.field final guard:Ljava/lang/Object;

.field index:I

.field volatile infinite:Z

.field initialRequested:J

.field mainDone:Z

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<*>;"
        }
    .end annotation
.end field

.field queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final s:Lrx/observers/SerializedSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observers/SerializedSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field final ssub:Lrx/subscriptions/SerialSubscription;


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->guard:Ljava/lang/Object;

    .line 46
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->infinite:Z

    .line 66
    new-instance v0, Lrx/observers/SerializedSubscriber;

    invoke-direct {v0, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->s:Lrx/observers/SerializedSubscriber;

    .line 67
    new-instance v0, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v0}, Lrx/subscriptions/SerialSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->ssub:Lrx/subscriptions/SerialSubscription;

    .line 68
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->ssub:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 69
    new-instance v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;-><init>(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 95
    return-void
.end method


# virtual methods
.method complete(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 239
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v2

    .line 240
    :try_start_0
    iget v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:I

    if-eq p1, v1, :cond_0

    .line 241
    monitor-exit v2

    .line 263
    :goto_0
    return-void

    .line 243
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->active:Z

    .line 244
    iget-boolean v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->mainDone:Z

    if-nez v1, :cond_1

    .line 245
    monitor-exit v2

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 247
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    if-eqz v1, :cond_3

    .line 248
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    if-nez v1, :cond_2

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    .line 251
    :cond_2
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    iget-object v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    monitor-exit v2

    goto :goto_0

    .line 255
    :cond_3
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    .line 256
    .local v0, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    .line 257
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    .line 258
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->drain(Ljava/util/List;)V

    .line 261
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v1}, Lrx/observers/SerializedSubscriber;->onCompleted()V

    .line 262
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->unsubscribe()V

    goto :goto_0
.end method

.method drain(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    .local p1, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 199
    .local v0, "o":Ljava/lang/Object;
    iget-object v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v0}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v2}, Lrx/observers/SerializedSubscriber;->onCompleted()V

    goto :goto_0

    .line 203
    :cond_2
    iget-object v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v0}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 204
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->s:Lrx/observers/SerializedSubscriber;

    iget-object v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v0}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 208
    :cond_3
    move-object v1, v0

    .line 209
    .local v1, "t":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v3, v1}, Lrx/observers/SerializedSubscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method emit(Ljava/lang/Object;ILrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;)V
    .locals 6
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber",
            "<TT;>.InnerSubscriber;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p3, "innerSubscriber":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>.InnerSubscriber;"
    iget-object v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 149
    :try_start_0
    iget v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:I

    if-eq p2, v3, :cond_1

    .line 150
    monitor-exit v4

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-boolean v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    if-eqz v3, :cond_3

    .line 153
    iget-object v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    if-nez v3, :cond_2

    .line 154
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    .line 156
    :cond_2
    invoke-static {p3}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->access$010(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;)J

    .line 157
    iget-object v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    monitor-exit v4

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 160
    :cond_3
    :try_start_1
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    .line 161
    .local v0, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    .line 162
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    .line 163
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    const/4 v1, 0x1

    .line 165
    .local v1, "once":Z
    const/4 v2, 0x0

    .line 168
    .local v2, "skipFinal":Z
    :cond_4
    :try_start_2
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->drain(Ljava/util/List;)V

    .line 169
    if-eqz v1, :cond_5

    .line 170
    const/4 v1, 0x0

    .line 171
    iget-object v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 172
    :try_start_3
    invoke-static {p3}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->access$010(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;)J

    .line 173
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 174
    :try_start_4
    iget-object v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v3, p1}, Lrx/observers/SerializedSubscriber;->onNext(Ljava/lang/Object;)V

    .line 176
    :cond_5
    iget-object v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 177
    :try_start_5
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    .line 178
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    .line 179
    if-nez v0, :cond_7

    .line 180
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    .line 181
    const/4 v2, 0x1

    .line 182
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 187
    :goto_1
    if-nez v2, :cond_0

    .line 188
    iget-object v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 189
    const/4 v3, 0x0

    :try_start_6
    iput-boolean v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    .line 190
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 173
    :catchall_2
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 187
    :catchall_3
    move-exception v3

    if-nez v2, :cond_6

    .line 188
    iget-object v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 189
    const/4 v5, 0x0

    :try_start_9
    iput-boolean v5, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    .line 190
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :cond_6
    throw v3

    .line 184
    :cond_7
    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 185
    :try_start_b
    iget-object v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v3}, Lrx/observers/SerializedSubscriber;->isUnsubscribed()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 184
    :catchall_4
    move-exception v3

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 190
    :catchall_5
    move-exception v3

    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v3
.end method

.method error(Ljava/lang/Throwable;I)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "id"    # I

    .prologue
    .line 216
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v2

    .line 217
    :try_start_0
    iget v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:I

    if-eq p2, v1, :cond_0

    .line 218
    monitor-exit v2

    .line 236
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-boolean v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    if-eqz v1, :cond_2

    .line 221
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    if-nez v1, :cond_1

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    .line 224
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    iget-object v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    monitor-exit v2

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 228
    :cond_2
    :try_start_1
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    .line 229
    .local v0, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    .line 230
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    .line 231
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->drain(Ljava/util/List;)V

    .line 234
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v1, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 235
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->unsubscribe()V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 4

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v2

    .line 127
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->mainDone:Z

    .line 128
    iget-boolean v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->active:Z

    if-eqz v1, :cond_0

    .line 129
    monitor-exit v2

    .line 145
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-boolean v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    if-nez v1, :cond_1

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    .line 135
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    iget-object v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    monitor-exit v2

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 138
    :cond_2
    :try_start_1
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    .line 139
    .local v0, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    .line 140
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    .line 141
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->drain(Ljava/util/List;)V

    .line 143
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v1}, Lrx/observers/SerializedSubscriber;->onCompleted()V

    .line 144
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->unsubscribe()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 119
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 120
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->unsubscribe()V

    .line 121
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->onNext(Lrx/Observable;)V

    return-void
.end method

.method public onNext(Lrx/Observable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    .local p1, "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 102
    :try_start_0
    iget v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:I

    .line 103
    .local v0, "id":I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->active:Z

    .line 104
    iget-boolean v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->infinite:Z

    if-eqz v1, :cond_0

    .line 105
    const-wide v2, 0x7fffffffffffffffL

    .line 109
    .local v2, "remainingRequest":J
    :goto_0
    new-instance v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    invoke-direct {v1, p0, v0, v2, v3}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;-><init>(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;IJ)V

    iput-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    .line 110
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    invoke-static {v1, v2, v3}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->access$002(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;J)J

    .line 111
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->ssub:Lrx/subscriptions/SerialSubscription;

    iget-object v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    invoke-virtual {v1, v4}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 114
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    invoke-virtual {p1, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 115
    return-void

    .line 107
    .end local v2    # "remainingRequest":J
    :cond_0
    :try_start_1
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    if-nez v1, :cond_1

    iget-wide v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->initialRequested:J

    .restart local v2    # "remainingRequest":J
    :goto_1
    goto :goto_0

    .end local v2    # "remainingRequest":J
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    invoke-static {v1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->access$000(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;)J

    move-result-wide v2

    goto :goto_1

    .line 111
    .end local v0    # "id":I
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
