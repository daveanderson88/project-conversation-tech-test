class ModelAudit < Audited::Audit
  def self.status_activity_data
    status_audits.map do |a|
      {
        name: User.find_by_id(a.user_id)&.name,
        message: "Status changed from #{a.project_status_key_was} to #{a.project_status_key}.",
        time: a.created_at
      }
    end
  end

  def project_status_key
    Project.statuses.key(self[:audited_changes]['status'][1])
  end

  def project_status_key_was
    Project.statuses.key(self[:audited_changes]['status'][0])
  end

  def self.status_audits
    select { |a| a.audited_changes['status']&.is_a?(Array) }
  end
end
