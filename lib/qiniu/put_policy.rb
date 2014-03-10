class PutPolicy

  include Utils

  attr_accessor :scope, :callback_url, :callback_body, :return_url, :return_body, :async_ops, :end_user, :expires

  def initialize(opts = {})
    @scope = opts[:scope]
    @callback_url = opts[:callback_url]
    @callback_body = opts[:callback_body]
    @return_url = opts[:return_url]
    @return_body = opts[:return_body]
    @async_ops = opts[:async_ops]
    @end_user = opts[:end_user]
    @expires = opts[:expires] || 3600
  end
end